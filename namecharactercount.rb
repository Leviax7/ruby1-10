puts "Hello there! What is your first name?"
first_name = gets.chomp
puts "Now tell me, what is your middle name?"
middle_name = gets.chomp
puts "And finally, what is your last name #{first_name} #{middle_name}?"
last_name = gets.chomp
charcount = first_name.length.to_i + middle_name.length.to_i + last_name.length.to_i
puts "Did you know there are #{charcount} letters in your name?"