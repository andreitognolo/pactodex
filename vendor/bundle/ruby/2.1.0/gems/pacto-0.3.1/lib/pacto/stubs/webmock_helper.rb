module Pacto
  module Stubs
    class WebMockHelper
      class << self
        include Logger

        def validate(request_signature, response)
          pacto_response = webmock_to_pacto_response(response)
          contract = Pacto.contracts_for(request_signature).first
          validation = Validation.new request_signature, pacto_response, contract
          Pacto::ValidationRegistry.instance.register_validation validation
        end

        def generate(request_signature, response)
          logger.debug("Generating Contract for #{request_signature}, #{response}")
          begin
            contract_file = load_contract_file(request_signature)

            unless File.exists? contract_file
              generate_contract(request_signature, response, contract_file)
            end
          rescue => e
            logger.error("Error while generating Contract #{contract_file}: #{e.message}")
            logger.error("Backtrace: #{e.backtrace}")
          end
        end

        private

        def generate_contract(request_signature, response, contract_file)
          uri = URI(request_signature.uri)
          pacto_request = webmock_to_pacto_request(request_signature)
          pacto_response = webmock_to_pacto_response(response)
          generator = Pacto::Generator.new
          FileUtils.mkdir_p(File.dirname contract_file)
          File.write(contract_file, generator.save(uri, pacto_request, pacto_response))
          logger.debug("Generating #{contract_file}")

          Pacto.load_contract contract_file, uri.host
        end

        def load_contract_file(request_signature)
          uri = URI(request_signature.uri)
          basename = File.basename(uri.path, '.json') + '.json'
          File.join(Pacto.configuration.contracts_path, uri.host, File.dirname(uri.path), basename)
        end

        def webmock_to_pacto_request(webmock_request)
          uri = webmock_request.uri
          Faraday::Request.create webmock_request.method do |req|
            req.path = uri.path
            req.params = uri.query_values
            req.headers = webmock_request.headers
            req.body = webmock_request.body
          end
        end

        def webmock_to_pacto_response(webmock_response)
          status, _description = webmock_response.status
          Faraday::Response.new(
            :status => status,
            :response_headers => webmock_response.headers || {},
            :body => webmock_response.body
          )
        end
      end
    end
  end
end
