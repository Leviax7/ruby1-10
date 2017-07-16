bye_counter = 0 

puts "Please enter your name to start."
name = gets.chomp
puts "#{name.upcase}, IS THAT YOU? ITS BEEN AGES! WHAT DO YOU WANT TO TALK ABOUT?"
phrase = gets.chomp
while bye_counter != 2

	if phrase == phrase.upcase && phrase != "BYE"
		puts "NO NOT SINCE 1938! WHAT ELSE IS ON YOUR MIND?"
		bye_counter = 0
	elsif phrase != "BYE"
		puts "HUH?! SPEAK UP SONNY"
		bye_counter = 0
	else
		puts "OH HO HO THATS A GENEROUS OFFER SWEETY BUT MY VARICOSE VEINS ARE ACTING UP, MAYBE TOMORROW."
		bye_counter = bye_counter + 1
	end
	phrase = gets.chomp
end
