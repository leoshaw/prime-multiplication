require_relative "test_helper"
require "minitest/autorun"
require "table_builder"

describe TableBuilder do
  let(:builder) { TableBuilder.new }

  it "formats the table correctly" do
    builder.build([1, 2, 3]).must_equal <<~END.strip
      |   | 1 | 2 | 3 |
      +---+---+---+---+
      | 1 | 1 | 2 | 3 |
      | 2 | 2 | 4 | 6 |
      | 3 | 3 | 6 | 9 |
    END
  end
end
