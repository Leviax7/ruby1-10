#Project Euler problem 1
running = true
sum = 0
i = 0
while i < 1000
	if i % 3 == 0 || i % 5 == 0
		sum = sum + i 
	end
	i = i+1
end
puts sum