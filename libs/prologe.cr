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
      puts "you walk slowly towards the cauldron, inside is a bubbling liquid with kind of brownish color."
      puts "Would you like to (t)aste it ? or go away and try to climb the (h)ill ?"
      choise = gets
      until choise =~ /(t|h)/i
        choise = gets
      end
      if choise =~ /t/i
        puts "you take a small metallic cup that lies beneath the cauldron, fill it with the brown goo and take a sip"
        puts "The goo's taste is like some kind of potato stew, nothing else seems to happen, but you think there is need for more salt."
        puts "\r\nYou add the small cup to your inventory".colorize(:green)
        puts AsciiArt.a_cup
        player_char.inventory << "Small Cup"
        puts "(enter)"
        gets
      end
    end
    puts "You decide to check out the hill and see if you can get a better vantage point."
    puts "You try to climb the hill, it's not that easy and there are sharp, almost glass like rocks all over."
    puts "(enter)"
    gets
    system("clear")
    if player_char.agility >= 1
      puts "Agility check succeeded !".colorize(:green)
      puts "You climb easily to the top avoiding the needle sharp rocks."
    elsif player_char.agility < 1
      puts "Agility check failed !".colorize(:red)
      puts "On your way to the top you step on an unstable rock, you fall down with your head straight into the sharp stone"
      puts "Missing your eye within an inch, giving you a painful gash on the check"
      puts "-2 to Health".colorize(:red)
      player_char.health -= 2
    end
    puts "(enter)"
    gets
    system("clear")
    puts "As you reach to the top you look around, taking your time to try and understand what you see in the darkness."
    puts "Giant shapes loom around you, but then, the moon light breaches the clouds and you see that those are huge buildings."
    puts "All your memory comes back like a great tide, the war, the heat, the flowers likes small suns, the fire...the fire...."
    puts "End of Prologue".colorize(:yellow)
    puts "(enter)"
    gets
    return player_char
  end

end