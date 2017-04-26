require "optparse"
require 'ostruct'
require "terminal-table"

require_relative "prime_finder"

class Primes
  def build(*args)
    options = OpenStruct.new
    invalid = OptionParser.new do |opts|
      opts.on("--count COUNT", Float) { |o| options[:count] = o }
    end.parse(args)

    if(options.count)
      rows = Prime.new.calculate(options.count)
      Terminal::Table.new do |t|
        t.rows = rows.slice(1..-1)
        t.headings = [""].concat rows.first
        t.style = { border_top: false, border_bottom: false }
      end.to_s
    else
      "Incorrect arguments: #{args.inspect}"
    end
  end

  def build_table_array(primes)
  end

end

class Prime
  def calculate(count)
    [[2, 3, 5],
     [2, 4, 6, 10],
     [3, 6, 9, 15],
     [5, 10, 15, 25]]
  end
end

puts Primes.new.build(*ARGV)
