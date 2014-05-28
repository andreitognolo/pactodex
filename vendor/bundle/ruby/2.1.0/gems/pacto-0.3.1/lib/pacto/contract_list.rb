module Pacto
  class ContractList
    attr_reader :contracts

    def initialize(contracts)
      @contracts = contracts
    end

    def stub_all(values = {})
      contracts.each { |contract| contract.stub_contract!(values) }
    end

    def validate_all
      contracts.map { |contract| contract.validate_provider }
    end
  end
end
