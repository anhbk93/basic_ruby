def daoso(n)
	n= n.to_s
	n= n.reverse
	n =n.to_i
	return n
end
def kt_nguyen_to (n)
	i = 2
	check = true
	if (n < 1) 
		return false
	end
	while (i < Math.sqrt(n)) do
		if ( n%i == 0) 
			check =false
		end
			i += 1
	end
	return check;
end
p "Input a number : "
value = gets()
value = value.to_i
p "Result : #{daoso(value)}"
p "Result2 : #{kt_nguyen_to(value)}"