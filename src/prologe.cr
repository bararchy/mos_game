class Prologue

  def self.story_prologue(player_char)
    puts AsciiArt.prologue
    Text::Parser::Box.parse(File.read("./data/prologue.en/prologue_1.data"), STDOUT)
    puts AsciiArt.a_bomb
    gets
    system("clear")
    puts AsciiArt.a_culdron
    Text::Parser::Box.parse(File.read("./data/prologue.en/prologue_2.data"), STDOUT)
    gets
    system("clear")
    Text::Parser::Box.parse(File.read("./data/prologue.en/prologue_3.data"), STDOUT)
    choise = gets
    until choise =~ /(c|h)/i
      choise = gets
    end
    system("clear")
    if choise =~ /c/i
      Text::Parser::Box.parse(File.read("./data/prologue.en/prologue_3_c.data"), STDOUT)
      choise = gets
      until choise =~ /(t|h)/i
        choise = gets
      end
      if choise =~ /t/i
        system("clear")
        Text::Parser::Box.parse(File.read("./data/prologue.en/prologue_3_c_t.data"), STDOUT)
        puts AsciiArt.a_cup
        player_char.inventory << "Small Cup"
        gets
      end
    end
    system("clear")
    Text::Parser::Box.parse(File.read("./data/prologue.en/prologue_4.data"), STDOUT)
    gets
    system("clear")
    if player_char.agility >= 1
      Text::Parser::Box.parse(File.read("./data/prologue.en/prologue_4_acheck_pass.data"), STDOUT)
    elsif player_char.agility < 1
      Text::Parser::Box.parse(File.read("./data/prologue.en/prologue_4_acheck_fail.data"), STDOUT)
      player_char.health -= 2
    end
    gets
    system("clear")
    Text::Parser::Box.parse(File.read("./data/prologue.en/prologue_end.data"), STDOUT)
    gets
    return player_char
  end

end