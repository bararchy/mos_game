class Prologe

  def self.story_prologe(player_char)
    puts "The flowers bloomed all over the horizen, hot, blazing, like hundreds of small suns."
    puts a_bomb
    puts "Ripples of dust and sorched air burned everything in there path."
    puts "You can fell the waves of invisable fire getting closer...your skin begins to burn.."
    puts "(enter)"
    gets
    system("clear")
    puts "Wake up !"
    puts "You fell you are being shaken, thorwn thrugh the air, rocks and pebeles hit you all over"
    puts "Wake Up I said !"
    puts "you open your eyes, it looks dark around you, and the smell of fire and smoke is all around, choking..."
    puts "(enter)"
    gets
    system("clear")
    puts "You get a grip and look around, focusing your eyes, there is a small fire with a cauldron on it"
    puts a_culdron

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