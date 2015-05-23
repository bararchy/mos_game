class ReadParser

  def self.parse_file(data)
    data = data.lines
    data.each do |line|
      case line
      when /##blue/
        line = line.split("##")[0]
        puts line.colorize.blue
      when /##red/
        line = line.split("##")[0]
        puts line.colorize.red
      when /##yellow/
        line = line.split("##")[0]
        puts line.colorize.yellow
      when /##green/
        line = line.split("##")[0]
        puts line.colorize.green
      when /##bold/
        line = line.split("##")[0]
        puts line.colorize.bold
      else
        puts line
      end
    end
  end
end