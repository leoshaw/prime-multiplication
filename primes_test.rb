require "minitest/autorun"

require_relative "primes"
require "pp"


describe Primes do
  describe "when passed valid arguments" do
    it "returns a multiplication table of primes" do
      Primes.new.build("--count", "3").must_equal <<-END
        |  2  3  5
      --+---------
      2 |  4  6 10
      3 |  6  9 15
      5 | 10 15 25
      END
    end
  end

  describe "when missing arguments" do
    it "returns an error message" do
      Primes.new.build().must_equal "Incorrect arguments []"
    end
  end
end

require_relative "prime_finder"

describe PrimeFinder do
  describe "when asked for primes" do
    it "returns the correct sequence" do
      PrimeFinder.new.findFirst(10).must_equal [2, 3, 5, 7, 11, 13, 17, 19, 23, 29]
    end
  end
end



