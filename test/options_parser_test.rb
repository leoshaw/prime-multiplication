require_relative "test_helper"
require "minitest/autorun"
require "options_parser"

describe OptionsParser do
  let(:parser) { OptionsParser.new }

  it "raises an error when count is missing entirely" do
    assert_raises OptionParser::ParseError do
      parser.parse []
    end
  end

  it "rejects a non-numeric count" do
    assert_raises OptionParser::ParseError do
      parser.parse(["--count", "A"])
    end
  end

  it "extracts the count argument" do
    parser.parse(["--count", "10"]).count.must_equal 10
  end
end

