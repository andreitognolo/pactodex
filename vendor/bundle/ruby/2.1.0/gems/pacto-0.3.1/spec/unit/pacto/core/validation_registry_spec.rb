describe Pacto::ValidationRegistry do
  subject(:registry) { Pacto::ValidationRegistry.instance }
  let(:request_pattern) { WebMock::RequestPattern.new(:get, 'www.example.com') }
  let(:request_signature) { WebMock::RequestSignature.new(:get, 'www.example.com') }
  let(:different_request_signature) { WebMock::RequestSignature.new(:get, 'www.thoughtworks.com') }
  let(:validation) { Pacto::Validation.new(request_signature, double, nil) }
  let(:validation_for_a_similar_request) { Pacto::Validation.new(request_signature, double, nil) }
  let(:validation_for_a_different_request) { Pacto::Validation.new(different_request_signature, double, nil) }

  before(:each) do
    registry.reset!
  end

  describe 'reset!' do
    before(:each) do
      registry.register_validation(validation)
    end

    it 'cleans validations' do
      expect { registry.reset! }.to change { registry.validated? request_pattern }.from([validation]).to(nil)
    end
  end

  describe 'registering and reporting registered validations' do
    it 'returns registered validation' do
      expect(registry.register_validation validation).to eq(validation)
    end

    it 'reports if validation is not registered' do
      expect(registry.validated? request_pattern).to be_false
    end

    it 'registers and returns matching validations' do
      registry.register_validation(validation)
      registry.register_validation(validation_for_a_similar_request)
      registry.register_validation(validation_for_a_different_request)
      expect(registry.validated? request_pattern).to eq([validation, validation_for_a_similar_request])
    end
  end

  describe '.unmatched_validations' do
    let(:contract) { double('contract', :name => 'test') }

    it 'returns validations with no contract' do
      allow(contract).to receive(:validate_consumer).with(different_request_signature, anything).and_return(double('results', :empty? => true))
      validation_with_results = Pacto::Validation.new(different_request_signature, double, contract)
      registry.register_validation(validation)
      registry.register_validation(validation_for_a_similar_request)
      registry.register_validation(validation_for_a_different_request)
      registry.register_validation(validation_with_results)

      expect(registry.unmatched_validations).to match_array([validation, validation_for_a_similar_request, validation_for_a_different_request])
    end
  end

  describe '.failed_validations' do
    let(:contract) { double('contract', :name => 'test') }
    let(:results2) { double('results2', :empty? => false, :join => 'wtf') }

    it 'returns validations with unsuccessful results' do
      allow(contract).to receive(:name).and_return 'test'
      allow(contract).to receive(:validate_consumer).with(request_signature, anything).and_return(results2)
      validation_with_successful_results = Pacto::Validation.new(request_signature, double, contract)
      validation_with_unsuccessful_results = Pacto::Validation.new(request_signature, double, contract)

      expect(validation_with_successful_results).to receive(:successful?).twice.and_return true
      expect(validation_with_unsuccessful_results).to receive(:successful?).twice.and_return false

      registry.register_validation(validation)
      registry.register_validation(validation_with_successful_results)
      registry.register_validation(validation_with_unsuccessful_results)

      expect(registry.failed_validations).to match_array([validation_with_unsuccessful_results])
    end
  end
end
