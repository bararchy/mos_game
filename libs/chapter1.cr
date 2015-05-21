class Chapter1

  def self.story_chapter1(player_char)
    player_char
    system("clear")
    puts AsciiArt.chapter_1
    puts "\r\n\r\n"
    puts "The huge decaying city spreads for many miles, from your low vantage point you cannot see the cities borders."
    puts AsciiArt.a_city
    puts "\r\n"
    puts "A warm and dry wind blows gently and endlessly at your back, and you start rotating your gaze."
    puts "(enter)"
    gets
    system("clear")
    puts "To the opposite side of the city, a massive desert spreads as long as the eye can see."
    puts "The moon colors the sand in a ghostly silver light, and it looks like a frozen sea of quicksilver."
    puts "A low but constant mountain ridge is bordering the desert from one side, and the desert continues on with it."
    print "Would you like to head in the direction of the (d)esert? or the (c)ity ?: "
    choise = gets
    system("clear")
    if choise =~ /d/i
      desert(player_char)
    elsif choise =~ /c/i
      city(player_char)
    end
    return player_char
  end

  def self.city(player_char)
    puts "You go forward to the direction of the city, walking down the hill is much faster then climbing."
    puts "Looking at the moon light hitting the distance buildings you recall something about the morning, about the sun..."
    if player_char.intelligence >= 1
      puts "Intelligence check successful !".colorize(:green)
      puts "You have a felling you should get to the nearest building as soon as possible, but you can't remember why.."
    end
    puts "(enter)"
    gets
    system("clear")
  end



  def self.desert(player_char)

  end












end