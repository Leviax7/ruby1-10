class Die

  def initialize
    roll
  end

  def roll
    @number_showing = 1 + rand(6)
  end

  def showing
    @number_showing
  end

  def cheat

    @number_showing = 6

  end
end

die = Die.new 
puts "Lets throw some dice!"
puts "You may go first. Roll!"
puts "<Player 1 rolls the dice>"

puts die.roll
players_dice = die.showing

puts "Heh, not too bad, my turn! Roll!"
puts "<Dealer rolls the dice>"

die.roll

if die.showing < 5
  die.cheat
end

puts die.showing
dealers_dice = die.showing

if players_dice == dealers_dice
  puts "Looks like it's a draw! Care to play again?"
elsif players_dice > dealers_dice 
  puts "Good work kid, care to double your money?"
elsif 
  puts "Good try, maybe next time."
end
