require_relative "test_helper"
require "minitest/autorun"
require "prime_finder"

describe PrimeFinder do
  describe "when asked for primes" do
    it "returns the correct sequence" do
      PrimeFinder.new.first(10).must_equal [2, 3, 5, 7, 11, 13, 17, 19, 23, 29]
    end
  end
end



