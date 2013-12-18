require 'json'

module Doc2mock
  class Parser
    def parse_doc(doc)
      doc = JSON.parse(doc)
      %Q(
// #{doc["description"]}
//
// #{endpoint_description(doc)}

{
  "request": #{request(doc)},
  "response": #{response(doc)}
})
    end

    private
    def endpoint_description(doc)
      method, route = doc["http_method"], doc["route"]
      [method, route].join(" ")
    end

    def request(doc)
      pretty_json(doc["requests"].first["request_body"])
    end

    def response(doc)
      pretty_json(doc["requests"].first["response_body"])
    end

    def pretty_json(json_string)
      JSON.pretty_generate(
        JSON.parse(json_string)
      )
    end
  end
end
