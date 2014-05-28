module Pacto
  class ResponseClause
    attr_reader :status, :headers, :schema

    def initialize(definition)
      @status = definition['status']
      @headers = definition['headers']
      @schema = definition['body'] || {}
    end

    def body
      @body ||= JSON::Generator.generate(schema)
    end
  end
end
