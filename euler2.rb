#Project Euler 2
sum = 2
a = 1
b = 2
newnumber = a+b

while newnumber < 4000000
if newnumber % 2 == 0
	sum = sum + newnumber
end

a = b
b = newnumber
newnumber = a+b


end
puts sum