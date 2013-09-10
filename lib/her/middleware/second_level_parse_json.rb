module Her
  module Middleware
    # This middleware expects the resource/collection data to be contained in the `data`
    # key of the JSON object
    class SecondLevelParseJSON < ParseJSON
      # Parse the response body
      #
      # @param [String] body The response body
      # @return [Mixed] the parsed response
      # @private
      def parse(body)
        json = parse_json(body)

        {
          :data => json[:data],
          :errors => json[:errors],
          :metadata => json[:metadata]
        }
      end
    end
  end
end
