module JSON
  class Schema
    class DependenciesV4Attribute < Attribute
      def self.validate(current_schema, data, fragments, processor, validator, options = {})
        if data.is_a?(Hash)
          current_schema.schema['dependencies'].each do |property,dependency_value|
            if (data.has_key?(property.to_s) || data.has_key?(property.to_sym)) && dependency_value.is_a?(Array)
              dependency_value.each do |value|
                if !data.has_key?(value.to_s) && !data.has_key?(value.to_sym)
                  message = "The property '#{build_fragment(fragments)}' has a property '#{property}' that depends on a missing property '#{value}'"
                  validation_error(processor, message, fragments, current_schema, self, options[:record_errors])
                end
              end
            end
          end
        end
      end
    end
  end
end