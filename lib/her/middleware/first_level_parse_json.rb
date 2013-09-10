module Her
  module Middleware
    # This middleware treat the received first-level JSON structure as the resource data.
    class FirstLevelParseJSON < ParseJSON
      # Parse the response body
      #
      # @param [String] body The response body
      # @return [Mixed] the parsed response
      # @private
      def parse(body)
        json = parse_json(body)
        errors = json.delete(:errors) || {}
        metadata = json.delete(:metadata) || {}
        {
          :data => json,
          :errors => errors,
          :metadata => metadata
        }
      end
    end
  end
end
