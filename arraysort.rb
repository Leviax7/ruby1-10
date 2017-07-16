sort = []
puts "Please enter one word at a time. When you are finished enter a blank line."
add = gets.chomp
sort.push add
while add != ""
	add = gets.chomp
	sort.push add
end
sort.pop
puts sort.sort.to_s
sort.sort!
puts sort.to_s	