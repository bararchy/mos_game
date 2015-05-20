class CharPage
  property :agility, :strength, :intelligence, :health, :mana, :karma

  def initialize(char_set_hash)
    @char_name ||= char_set_hash[:char_name]
    @char_gender ||= char_set_hash[:char_gender]
    @agility = 0
    @strength = 0
    @intelligence = 0
    @health = 10
    @mana = 0
    @karma = 5
    @money = 0
  end

  def parse_page
    puts "Name: #{@char_name}"
    puts "Gender: #{@char_gender}"
    puts "Currency: #{@money}"
    puts "Abilities"
    puts "--------\r\n"
    puts "Agi: #{@agility}"
    puts "Str: #{@strength}"
    puts "Int: #{@intelligence}"
    puts "Status"
    puts "------\r\n"
    puts "Health: #{@health}"
    puts "Mana: #{@mana}"
    puts "Karma: #{@karma}"
  end

  def char_creation
    puts "Ok, let's create a character for you to play with"
    puts "We have three basic abilities, and three status bars"
    puts "You are going to get 3 points to start with, and you will choose which"
    puts "abilities you wan those points invested at."
    puts "press enter to continue..."
    gets
    puts "\r\n" * 60
    points = 3
    until points == 0
      puts "Free Points: #{points}"
      puts "Abilities"
      puts "--------\r\n"
      puts "Agi: #{@agility}"
      puts "Str: #{@strength}"
      puts "Int: #{@intelligence}"
      puts "\r\n\r\n"
      puts "press ('a'/'A') to add a point to agility"
      puts "press ('s'/'S') to add a point to strength"
      puts "press ('i'/'I') to add a point to intelligence"
      add_to = gets
      if add_to
        if add_to =~ /a/i
          @agility += 1
          points -= 1
        elsif add_to =~ /s/i
          @strength += 1
          points -= 1
        elsif add_to =~ /i/i
          @intelligence += 1
          points -= 1
        end
      end
    end
    puts "\r\n" * 60
    puts "Ok, we are done, lets give you some money :)"
    @money = 5
    puts "5$ added to character"
    puts "This is how your character page looks now: \r\n"
    parse_page
  end
end