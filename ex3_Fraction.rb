class Fraction
	attr_accessor :numerator,:denominator
	def initialize(a,b)
		@numerator = a
		@denominator =b
	end
	def multiplication (fraction)
		@numerator *= fraction.numerator
		@denominator *= fraction.denominator
		self.compact_fraction
	end
	def division (fraction)
		@numerator *= fraction.denominator
		@denominator *= fraction.numerator
		self.compact_fraction
	end
	def compact_fraction
		num = Fraction.max_common_divisor(@numerator,@denominator)
		@numerator /= num
		@denominator /= num
	end
	def addition (fraction)
		if (@denominator < 0 ) 
			@denominator *= -1
			@numerator *= -1
		else 
			if (fraction.denominator < 0 )
				fraction.denominator *= -1
				fraction.numerator *= -1
			end
		end

		if (@denominator == fraction.denominator) 
			@numerator = @numerator + fraction.numerator
			self.compact_fraction
		else 		
		@numerator = @numerator*fraction.denominator + @denominator*fraction.numerator
		@denominator *= fraction.denominator
		self.compact_fraction
		end
		
	end
	def subtraction (fraction)
		if (@denominator < 0 ) 
			@denominator *= -1
			@numerator *= -1
		else 
			if (fraction.denominator < 0 )
				fraction.denominator *= -1
				fraction.numerator *= -1
			end
		end

		if (@denominator == fraction.denominator) 
			@numerator = @numerator - fraction.numerator
			self.compact_fraction
		else 		
		@numerator = @numerator*fraction.denominator - @denominator*fraction.numerator
		@denominator *= fraction.denominator
		self.compact_fraction
		end
	end
	def self.max_common_divisor(a,b)
		if ( a < 0 )
			a *= -1
		end
		if (b < 0)
			b *= -1
		end
		while ( a != b ) do
			if (a > b)
				a -= b
			else
				if (b > a)
					b -= a
				end
			end
		end
		return a
	end
	def self.min_common_multiple(a,b)
		mul = a*b
		maxCD = Fraction.max_common_divisor(a,b)
		result = mul/maxCD
		return result
	end
	def display_fraction
		self.compact_fraction
		if (@denominator == @numerator ) 
			puts "Result : 1"
		else
			if (@numerator == @denominator*(-1))
				puts "Result : -1"
			else
				puts "Result : #{@numerator}/#{@denominator}"
			end
		end
	end
	def self.input_fraction
		fraction = Fraction.new(0,0)
		while true do
			puts "please, input a numerator :"
			nume = gets.to_i
			puts "input a denominator : "
			deno = gets.to_i
			
			if ( nume == 0 || deno == 0) 
				puts "Invalid input! please,try a gain!"
			else break
			end
		end
		fraction.numerator = nume
		fraction.denominator = deno
		return fraction
end
end

=begin
fract1 = Fraction.new(1,5)
fract2 = Fraction.new(2,6)
fract1.display_fraction
fract1.subtraction(fract2)
puts "#{fract1.numerator} / #{fract1.denominator}"
fract1.display_fraction
fract2.display_fraction
=end


#main 

while true do
	fract1 = Fraction.new(0,0)
	puts "Input value for the first fraction"
	fract1 = Fraction.input_fraction
	puts "Input value for the second fraction"
	fract2 = Fraction.new(0,0)
	fract2 = Fraction.input_fraction
	
	while true do
		puts "Give me a method( + , - , * , :) "
		puts "Plus 2 fraction, input 0"
		puts "Sub 2 fraction ,input 1"
		puts "Mul 2 fraction, input 2"
		puts "Div 2 fraction, input 3"
		method = gets.chomp
		
		if (method == "0")
			puts "you selected 0"
			fract1.addition(fract2)
			fract1.display_fraction
			break
		end
		if (method == "1")
			puts "you selected 1"
			fract1.subtraction(fract2)
			fract1.display_fraction
			break
		end
		if (method == "2")
			puts "you selected 2"
			fract1.multiplication(fract2)
			fract1.display_fraction
			break
		end
		if (method == "3")
			puts "you selected 3"
			fract1.division (fract2)
			fract1.display_fraction
			break
		end
		puts "invalid selection! please, try again"
	end

	
		puts "do  you want to try another"
		puts "to exit, input 0"
		puts "to continue, input anythings (except 0)"
		tryit = gets.chomp
		if (tryit == "0") 
			puts "you selected exit"
			break
		end	
		puts "you selected continue"
	
end

