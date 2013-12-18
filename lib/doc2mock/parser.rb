require 'json'

module Doc2mock
  class Parser
    def initialize(raw_doc)
      @doc = JSON.parse(raw_doc)
    end

    def annotated_mock
      %Q(
// #{@doc["description"]}
//
// #{endpoint_description}

{
  "request": #{request},
  "response": #{response}
})
    end

    private
    def endpoint_description
      method, route = @doc["http_method"], @doc["route"]
      [method, route].join(" ")
    end

    def request
      pretty_json(@doc["requests"].first["request_body"])
    end

    def response
      pretty_json(@doc["requests"].first["response_body"])
    end

    def pretty_json(json_string)
      JSON.pretty_generate(
        JSON.parse(json_string)
      )
    end
  end
end
