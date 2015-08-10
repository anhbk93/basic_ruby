 require 'mysql'  
con = Mysql.new('localhost', 'root', 'root', 'ruby')  
rs = con.query('select * from usernames')  
rs.each_hash { |h| puts printf "%3s %20s %15s %5s \n",h['idusernames'],h['Name'],h['DiaChi'],h['GioiTinh']}  


puts "\n\n"
re = con.query("insert into usernames (Name,DiaChi,GioiTinh) values ('Nava IT','Da Nang','Nam')")
rs = con.query('select * from usernames')  
rs.each_hash { |h| puts printf "%3s %20s %15s %5s \n",h['idusernames'],h['Name'],h['DiaChi'],h['GioiTinh']} 


puts "\n\n"
re = con.query("delete from usernames where Name = 'Nava IT'")
rs = con.query('select * from usernames')  
rs.each_hash { |h| puts printf "%3s %20s %15s %5s \n",h['idusernames'],h['Name'],h['DiaChi'],h['GioiTinh']} 
con.close