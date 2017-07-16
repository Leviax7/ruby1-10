def bottles n1, n2
	ones = ['','one','two','three','four','five','six','seven','eight','nine']
	tens = ['','', 'twenty-','thirty-','fourty-','fifty-','sixty-','seventy-','eighty-','ninety-']
	teens = ['ten','eleven','twelve','thirteen','fourteen','fifteen','sixteen','seventeen','eighteen','nineteen']
	
	if n2 == ""
		return ones[n1]
	elsif n1 == 1
		return teens[n2]
	elsif n2 == 0
		return tens[n1].chomp('-') 
	else
		return tens[n1] + ones[n2].chomp	
	end

end

def bottle_helper n
	n = n.to_s.split('')
	if 	n.length == 1
		bottles n[0].to_i, ""
	else
		bottles n[0].to_i, n[1].to_i
	end
end

def bottle_capitalize n
	return n.capitalize
end


puts "How many bottles would you like to start with? Please enter a number between 1 and 99"

bottle_amounts = gets.chomp
while bottle_amounts.to_i > 0
	
	if bottle_amounts == 1
		puts "#{bottle_capitalize bottle_helper bottle_amounts} more bottle of beer on the wall, #{bottle_helper bottle_amounts} more bottle of beer."
		puts "Take it down, pass it around, there are no more bottles of beer."
		bottle_amounts = bottle_amounts.to_i - 1

	else 
		puts "#{bottle_capitalize bottle_helper bottle_amounts} bottles of beer on the wall, #{bottle_helper bottle_amounts} bottles of beer."
		bottle_amounts = bottle_amounts.to_i - 1
		puts "Take one down, pass it around, #{bottle_helper bottle_amounts} #{bottle_amounts == 1 ? "more bottle" : "bottles"} of beer on the wall."
	end
end
