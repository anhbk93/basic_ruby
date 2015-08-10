
class Database
	def initialize


	end 
	# def nhap
	# 	puts "nhap Ten"
 #    	$Ten= gets.chomp
 #    	puts "DiaChi"
 #    	$Diachi=gets.chomp
 #    	puts "Gioi tinh:"
 #    	$Gioitinh= gets.chomp  
		
	# end
	def insert(db,ten,diachi,gioitinh)
		 db.query("INSERT INTO usernames (Name,DiaChi,GioiTinh) VALUES ('#{ten}','#{diachi}','#{gioitinh}')")
	end
	def select(db)
		rs = db.query("SELECT * FROM usernames where GioiTinh='nam'")
    	n_rows = rs.num_rows
    
    	puts "There are #{n_rows} rows in the result set"
    
    	n_rows.times do
        puts rs.fetch_row.join("\s")
        end
	end
	def selectsao(db)
		rs = db.query("SELECT * FROM usernames")
    	n_rows = rs.num_rows
    
    	puts "There are #{n_rows} rows in the result set"
    
   		 n_rows.times do
        puts rs.fetch_row.join("\s")
        end
	end
end 


require 'mysql'
require './input'
i=Input.new

  db = Mysql.new('localhost', 'root', '123456', 'ruby')
	d=Database.new
	# k=11
	d.selectsao(db)
	2.times do
	i.nhap
    
    d.insert(db,$Ten,$Diachi,$Gioitinh)
    # k=k+1
    end
    d.select(db)
    db.close

