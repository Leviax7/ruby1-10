puts "Please enter the first year"
start = gets.chomp
puts "Please enter the last year"
finish = gets.chomp

while start.to_i <= finish.to_i
	
	if start.to_i % 400 == 0
		puts "#{start} is leap year"
	elsif start.to_i % 100 == 0
		puts "#{start} is not a leap year"
	elsif start.to_i % 4 == 0
		puts "#{start} is a leap year"
	else
		puts "#{start} is not leap year"
	end

	start = start.to_i+1
end