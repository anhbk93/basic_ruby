class Example 
	VAR1 = 100
	VAR2 = 200
	def  show
		puts "Values of first constant is #{VAR1}"
		puts "Values of second constant is #{VAR2}"
		
	end
end


ary = [  "fred", 10, 3.14, "This is a string", "last element", ]
ary.each do |i|
   puts i
end
#Create object
object=Example.new()
object.show