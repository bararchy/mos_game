class CharPage
  property :agility, :strength, :intelligence, :health, :mana, :karma, :char_name, :char_gender, :inventory, :expireance

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
    @expireance = 0
    @inventory = [] of String
  end

  def parse_page
    puts "\r\n\r\n"
    puts "   Character Page    ".colorize(:green)
    puts "---------------------".colorize(:blue)
    puts "|Name: #{@char_name}"
    puts "|Gender: #{@char_gender}"
    puts "|Currency: #{@money}"
    puts "---------------------".colorize(:blue)
    puts "---------------------".colorize(:blue)
    puts "|     Abilities     |".colorize(:green)
    puts "---------------------".colorize(:blue)
    puts "|Agi: #{@agility}"
    puts "|Str: #{@strength}"
    puts "|Int: #{@intelligence}"
    puts "---------------------".colorize(:blue)
    puts "|      Status       |".colorize(:green)
    puts "---------------------".colorize(:blue)
    puts "|Health: #{@health}"
    puts "|Mana: #{@mana}"
    puts "|Karma: #{@karma}"
    puts "|Expireance: #{@expireance}"
    puts "---------------------".colorize(:blue)
    puts "|      Inventory     |".colorize(:green)
    puts "---------------------".colorize(:blue)
    @inventory.each do |item|
      puts "|#{item}"
    end
    puts "---------------------".colorize(:blue)
    puts "\r\n\r\n"
  end

  def char_creation
    puts "Ok, let's create a character for you to play with"
    puts "We have three basic abilities, and three status bars"
    puts "You are going to get 3 points to start with, and you will choose which"
    puts "abilities you want those points invested at."
    puts "press enter to continue..."
    gets
    system("clear")
    points = 3
    until points == 0
      system("clear")
      puts "Free Points: #{points}".colorize(:red)
      puts "Abilities".colorize(:green)
      puts "--------\r\n".colorize(:blue)
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
    system("clear")
    puts "Ok, we are done, lets give you some money:"
    @money = 5
    puts "5$ added to character !"
    puts "This is how your character page looks now: \r\n"
    parse_page
  end




end