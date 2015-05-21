# This is a try at creating a small game
# MOS_rpg_game -- Mini Offline Singleplayer Game :)
# By Bar.Hofesh at safe-t.com
LD_LIBRARY_PATH="./ext/"
require "./libs/**"
require "colorize"

class MOSgame

  def self.init
    system("clear")
    puts AsciiArt.welcome_logo
    puts "Before we start I need you to answer a few questions please"
    puts "What is your name?: "
    char_name = gets.to_s.chomp
    puts "Are you a (m)ale or (f)emale?: "
    char_gender = gets.to_s.chomp
    if char_gender.match(/(f|female)/)
      char_gender = "female"
    elsif char_gender.match(/(m|male)/)
      char_gender = "male"
    end
    populate = {:char_gender => char_gender, :char_name => char_name}
    player_char = CharPage.new(populate)
    player_char.char_creation
    puts "Now, lets begin..(enter)"
    gets
    system("clear")
    # Start of Prologue
    player_char = Prologue.story_prologue(player_char)
    puts "+10 EXP Added to your character".colorize(:green)
    puts "(enter)"
    gets
    player_char.expireance += 10
    # Start of chapter 1
    player_char = Chapter1.story_chapter1(player_char)
    if player_char
      player_char.parse_page
    end
    puts "Hope you enjoyed To Be Continued".colorize(:green)
    puts "(enter)"
    gets
    exit 0
  end

end

MOSgame.init
