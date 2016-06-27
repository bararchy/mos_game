require "colorize"
require "./text-parser/*"

module Text::Parser
  module Box

    def self.parse(data, io=StringIO.new)
      lines = data.lines.map &.strip
      box_width = box_width = lines.max_of &.gsub(/##\w+$/, "").size

      print_upper_box(io, box_width)

      lines.each do |line|
        process_line(io, line, box_width)
      end

      print_lower_box(io, box_width)

      io
    end

    private def self.print_upper_box(io, box_width)
      io.print "┌"
      io.print "─" * (box_width + 2)
      io.puts "┐"
    end

    private def self.print_lower_box(io, box_width)
      io.print "└"
      io.print "─" * (box_width + 2)
      io.puts "┘"
    end

    private def self.process_line(io, line, box_width)
      padded = line.includes?("##") ? line.split("##")[0] : line
      padded = padded.ljust(box_width + 1)

      case line
      when /##blue/
        line = padded.colorize.blue
      when /##red/
        line = padded.colorize.red
      when /##yellow/
        line = padded.colorize.yellow
      when /##green/
        line = padded.colorize.green
      when /##bold/
        line = padded.colorize.bold
      when /(enter)/
        line = center("(enter)", box_width + 1).colorize.yellow
      when /options\((.*?)\)/
        options = $1.split(",")
        line = center("(#{options[0]}) (#{options[1]})", box_width + 1).colorize.yellow
      else
        line = padded # signless line
      end

      io.puts "│ #{line}│"
    end

    private def self.center(text, line_size)
      text.rjust(line_size / 2 + text.size / 2).ljust(line_size)
    end
  end
end