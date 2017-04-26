require "optparse"
require 'ostruct'
require "terminal-table"

require_relative "prime_table"
require_relative "prime_finder"

begin
  puts PrimeTable.new.build(*ARGV)
  exit 0
rescue OptionParser::ParseError => e
  puts e.message
  exit 1
end
