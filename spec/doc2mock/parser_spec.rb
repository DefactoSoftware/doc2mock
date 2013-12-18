require 'spec_helper'

describe Parser do
  describe "#initialize" do
    it "takes a raw document" do
      raw_document = %Q({ "foo": "bar" })
      expect(Parser.new(raw_document).instance_variable_get(:@doc)).to be_a(Hash)
    end
  end

  describe "#annotated_mock" do
    let(:parser) { Parser.new(API_DOCUMENTATION_WITH_RESPONSE) }

    it "includes the description" do
      expect(parser.annotated_mock).to include("// #{DESCRIPTION}")
    end

    it "includes the POST endpoint" do
      expect(parser.annotated_mock).to include("// #{POST_ENDPOINT}")
    end

    it "includes the request" do
      expect(parser.annotated_mock).to include(REQUEST)
    end

    it "includes the response" do
      expect(parser.annotated_mock).to include(RESPONSE)
    end

    it "outputs the correct file" do
      expect(parser.annotated_mock).to eq(PARSED_API_DOCUMENTATION_WITH_RESPONSE)
    end
  end
end
