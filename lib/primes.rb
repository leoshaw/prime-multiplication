require "optparse"
require_relative "prime_table"

begin
  puts PrimeTable.new.build(*ARGV)
  exit 0
rescue OptionParser::ParseError => e
  puts e.message
  exit 1
end
