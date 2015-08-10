class PhanSo
	attr_accessor :tu,:mau

	def initialize (a,b)
		@tu = a
		@mau = b
	end
	def phanso()
		puts "Nhap tu so : "
		@tu = gets.chomp.to_i

		puts "Nhap mau so : "
		@mau = gets.chomp.to_i
	end
	def nhanps(ps1,ps2)
		kq = PhanSo.new(0,0)
		kq.setTu = ps1.getTu * ps2.getTu
		kq.setMau = ps1.getMau * ps2.getMau
		return kq 
	end
	def chiaps(ps1,ps2)
		kq = PhanSo.new(0,0)
		kq.setTu = ps1.getTu * ps2.getMau
		kq.setMau = ps1.getMau * ps2.getTu
		return kq
	end
	def getTu
		@tu
	end
	def getMau
		@mau
	end
	def setTu=(value)
		@tu = value
	end
	def setMau=(value)
		@mau = value
	end
	def inPhanSo
		puts " Phan so : #{@tu}/#{@mau}"
	end
	def rut_gon()
		ps = PhanSo.new(0,0)
		uc = self.UCLN(@tu,@mau)
		ps.setTu = @tu/uc
		ps.setMau = @mau/uc
		return ps
	end
	def UCLN (a,b)
		while (a != b)  do 
		if (a > b) 
			a -= b
		end
		if (a< b) 
			b -= a	
		end
	end
		return a

	end
	def BCLN (a,b)
		return (a*b)/self.UCLN(a,b)
	end
end
ps1 = PhanSo.new(1,4)
ps2 = PhanSo.new(2,5)
ps3 = PhanSo.new(0,0)
ps4 = PhanSo.new(0,0)
ps3 = ps3.nhanps(ps1,ps2)
ps4 = ps2.chiaps(ps1,ps2)
ps3.inPhanSo
ps4.inPhanSo
ps3 = ps3.rut_gon
ps3.inPhanSo
