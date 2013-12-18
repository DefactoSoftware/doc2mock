require 'spec_helper'

describe Parser do
  let(:parser) { Parser.new() }

  describe "parsing a document" do
    it "includes the description" do
      expect(parser.parse_doc(
        API_DOCUMENTATION_WITH_RESPONSE
      )).to include("// #{DESCRIPTION}")
    end

    it "includes the POST endpoint" do
      expect(parser.parse_doc(
        API_DOCUMENTATION_WITH_RESPONSE
      )).to include("// #{POST_ENDPOINT}")
    end

    it "includes the request" do
      expect(parser.parse_doc(
        API_DOCUMENTATION_WITH_RESPONSE
      )).to include(REQUEST)
    end

    it "includes the response" do
      expect(parser.parse_doc(
        API_DOCUMENTATION_WITH_RESPONSE
      )).to include(RESPONSE)
    end

    it "outputs the correct file" do
      expect(parser.parse_doc(
        API_DOCUMENTATION_WITH_RESPONSE)
      ).to eq(PARSED_API_DOCUMENTATION_WITH_RESPONSE)
    end
  end
end
