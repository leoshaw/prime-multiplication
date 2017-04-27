
class OptionsParser
  def parse(args)
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
