require_relative "options_parser"
require_relative "prime_finder"
require_relative "table_builder"

class PrimeTable
  def initialize
    @options_parser = OptionsParser.new
    @table_builder = TableBuilder.new
    @prime_finder = PrimeFinder.new
  end

  def build(*args)
    options = @options_parser.parse(args)
    primes = @prime_finder.first(options.count)
    @table_builder.build(primes)
  end
end
