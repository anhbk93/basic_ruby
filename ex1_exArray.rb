myArray = Array.new(20) { |e| e = Random.rand(200)}
#myArray.each {|x| x = Random.rand(200)}
p myArray.sort!
p myArray.reverse!
p "Input a number:"
num = gets
num = num.to_i
if myArray.include?(num) == true
	p "Found"
else p "Not found"
end