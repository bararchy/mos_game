# This is a try at creating a small game
# MOS_rpg_game -- Mini Offline Singleplayer Game :)
# By Bar.Hofesh at safe-t.com
require "./libs/**"
require "colorize"

class MOSgame

  def self.init
    system("clear")
    welcome
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
    Prologe.story_prologe(player_char)
  end


  def self.welcome
    puts ["Hello and welcome to..\r\n",
          "
           ▄▄▄  ▄▄▄    ▄▄▄▄      ▄▄▄▄
           ███  ███   ██▀▀██   ▄█▀▀▀▀█
           ████████  ██    ██  ██▄        ▄███▄██   ▄█████▄  ████▄██▄   ▄████▄
           ██ ██ ██  ██    ██   ▀████▄   ██▀  ▀██   ▀ ▄▄▄██  ██ ██ ██  ██▄▄▄▄██
           ██ ▀▀ ██  ██    ██       ▀██  ██    ██  ▄██▀▀▀██  ██ ██ ██  ██▀▀▀▀▀▀
           ██    ██   ██▄▄██   █▄▄▄▄▄█▀  ▀██▄▄███  ██▄▄▄███  ██ ██ ██  ▀██▄▄▄▄█
           ▀▀    ▀▀    ▀▀▀▀     ▀▀▀▀▀     ▄▀▀▀ ██   ▀▀▀▀ ▀▀  ▀▀ ▀▀ ▀▀    ▀▀▀▀▀
                                          ▀████▀▀".colorize(:yellow),
          "\r\n             Version 0.1\r\n"].join
  end
end

MOSgame.init