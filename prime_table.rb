require "ostruct"
require "terminal-table"

require_relative "prime_finder"

class PrimeTable
  def build(*args)
    options = parse_args(args)
    build_table(options.count)
  end

  private

  def build_table(number_of_primes)
    primes = PrimeFinder.new.first(number_of_primes)

    Terminal::Table.new do |t|
      t.rows = build_rows(primes)
      t.headings = [""].concat primes
      t.style = { border_top: false, border_bottom: false, alignment: :right }
    end.render
  end

  def build_rows(primes)
    result = []
    primes.each do |x|
      row = [x]
      primes.each do |y|
        row.push(x * y)
      end
      result.push row
    end
    result
  end
  
  def parse_args(args)
    options = OpenStruct.new
    OptionParser.new do |opts|
      opts.on("--count COUNT", Float) { |o| options[:count] = o }
    end.parse(args)

    unless options.count
      raise OptionParser::MissingArgument, "count"
    end
    options
  end
end
