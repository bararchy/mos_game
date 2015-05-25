class ReadParser

  def self.parse_file(data)
    max_size = (data.lines.max_of &.bytesize) + 1
    print_upper_box(max_size)
    data = data.lines
    data.each do |line|
      line = parse_line_signs(line, max_size)
      puts build_line(line, max_size)
    end
    print_lower_box(max_size)
  end

  def self.print_upper_box(max_size)
    print " "
    print "_" * (max_size - 1)
    print "\r\n"
  end

  def self.print_lower_box(max_size)
    print "|"
    print "_" * ( max_size -1)
    print "|"
    print "\r\n"
  end

  def self.build_line(line, max_size)
    String.build do |new_line|
      new_line << "|"
      new_line << line
      new_line << " " * (max_size - (line.to_s.size + 1))
      new_line << "|"
    end
  end


  def self.parse_line_signs(line, max_size)
    case line
    when /##blue/
      line = (line.split("##")[0] + (" " * 6)).colorize.blue
    when /##red/
      line = (line.split("##")[0] + (" " * 5)).colorize.red
    when /##yellow/
      line = (line.split("##")[0] + (" " * 8)).colorize.yellow
    when /##green/
      line = (line.split("##")[0] + (" " * 7)).colorize.green
    when /##bold/
      line = (line.split("##")[0] + (" " * 6)).colorize.bold
    when /(enter)/
      middle = (max_size - 7) / 2
      if middle * 2 == max_size
        line = "#{" " * middle}(enter)#{" " * middle}".colorize.yellow
      elsif middle * 2 > max_size
        line = "#{" " * middle}(enter)#{" " * (middle +1)}".colorize.yellow
      elsif middle * 2 < max_size
        line = "#{" " * middle}(enter)#{" " * (middle -1)}".colorize.yellow
      end
    when /options\((.*?)\)/
      middle = (max_size - 8) / 2
      options = $1.split(",")
      if middle * 2 == max_size
        line = "#{" " * middle}(#{options[0]})  (#{options[1]})#{" " * middle}".colorize.yellow
      else
        line = "#{" " * middle}(#{options[0]})  (#{options[1]})#{" " * (middle - 1)}".colorize.yellow
      end
    else
      # signless line
    end
    return line
  end
end