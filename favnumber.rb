puts "Hello there! What would be your favorite number?"
favorite_number = gets.chomp
better_number = favorite_number.to_i + 1
puts "Are you sure #{favorite_number} is your favorite number? #{better_number} is an even better favorite number to have! It's bigger!"