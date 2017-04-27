require "minitest/autorun"

require_relative "../prime_table"

describe PrimeTable do
  describe "when passed valid arguments" do
    it "returns a multiplication table of primes" do
      PrimeTable.new.build("--count", "3").must_equal <<~END.strip
      |   |  2 |  3 |  5 |
      +---+----+----+----+
      | 2 |  4 |  6 | 10 |
      | 3 |  6 |  9 | 15 |
      | 5 | 10 | 15 | 25 |
      END
    end
  end

  describe "when missing arguments" do
    it "throws an error" do
      assert_raises OptionParser::ParseError do
        PrimeTable.new.build
      end
    end
  end
end
