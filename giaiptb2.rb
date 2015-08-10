
	def giaiptb2 (a,b,c)
		if (a == 0) 
			if ( b == 0 )
				if (c == 0) 
					print "Phuong trinh co vo so nghiem"
				else 
					puts "Phuong trinh vo nghiem"
				end
			else
				ng0 = -b/c
				puts "phuong trinh co mot nghiem x = #{ng0}"
			end
		else 
			delta = (b**2) - 4*a*c
			if (delta < 0) 
				puts "Phuong trinh vo nghiem"
			else
				if (delta ==  0) 
					ng0 = -b/(2*a)
					puts "Phuong trinh co nghiem kep x = #{ng0}"
				else
					x1 = ((-b) + Math.sqrt(delta))/(2*a)
					x2 = ((-b) - Math.sqrt(delta))/(2*a)
					puts "Phuong trinh co 2 nghiem la x1 = #{x1} hoac x2 = #{x2}"
				end
			end

			
		end
		 		 
	end
	def final_giaiptb2
		puts "Nhap a : "
		a = gets()
		a = a.to_i
		puts "Nhap b : "
		b = gets()
		b = b.to_i
		puts "Nhap c : "
		c = gets()
		c = c.to_i
		giaiptb2(a,b,c)
	end
	final_giaiptb2
