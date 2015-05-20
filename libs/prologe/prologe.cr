class Prologue

  def self.story_prologue(player_char)
    puts "The flowers bloomed all over the horizon, hot, blazing, like hundreds of small suns."
    puts a_bomb
    puts "Ripples of dust and scorched air burned everything in there path."
    puts "You can fell the waves of invisible fire getting closer...your skin begins to burn.."
    puts "(enter)"
    gets
    system("clear")
    puts "Wake up !"
    puts "You fell you are being shaken, thrown through the air, rocks and pebbles hit you all over"
    puts "Wake Up I said !"
    puts "you open your eyes, it looks dark around you, and the smell of fire and smoke is all around, choking..."
    puts "(enter)"
    gets
    system("clear")
    puts "You get a grip and look around, focusing your eyes, there is a small fire with a cauldron on it"
    puts a_culdron
    puts "Looking around slowly you see no one around, would you like to (g)et up ? or pretend you are still (s)leeping?: "
    choise = gets
    system("clear")
    if choise =~ /s/i
      puts "You keep laying down, waiting to see who is it that waked you up, after a few minutes where nothing happens"
    end
    puts "you get up and take a good look around"
    puts "There is no one there, all you can see around you is the small fire with the cauldron, and something bubbling inside"
    puts "A little bit further you can see a hill, the hill is circling you, giving you the sense that you are inside a crater of some sort."
    puts "would you like to see what's in the (c)auldron ? or try to climb the (h)ill ?"
    choise = gets
    system("clear")
    if choise =~ /c/i
      puts "you walk slowly towards the cauldron, inside is a bubbling liquid with kind of brownish color."
      puts "Would you like to (t)aste it ? or go away and try to climb the (h)ill ?"
      choise = gets
      if choise =~ /t/i
        puts "you take a small metallic cup that lies beneath the cauldron, fill it with the brown goo and take a sip"
        puts "The goo's taste is like some kind of potato stew, nothing else seems to happen, but you think there is need for more salt."
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
      puts "On your way to the top you step on an unstable rock, you fall down with your head straight into a rock"
      puts "missing your eye within an inch, giving you a painfully gash on the check"
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
  end

  def self.a_bomb
      a = "
            --_--
         (  -_    _).
       ( ~       )   )
     (( )  (    )  ()  )
      (.   )) (       )
        ``..     ..``
             | |
           (=| |=)
             | |
         (../( )\\.))".colorize(:red)
  end

  def self.a_culdron
    a = "
              (
               )  )
           ______(____
          (___________)
           /         \\
          /           \\
         |             |
    ____\\             /____
    ()____'.__     __.'____()
         .'` .'```'. `-.
        ().'`       `'.()"
  end

end