require '/home/uiu/rubyteam/bai_tap_ruby/baitap/Input.rb'
require '/home/uiu/rubyteam/bai_tap_ruby/baitap/users.rb'
require '/home/uiu/rubyteam/bai_tap_ruby/baitap/login.rb'

class Myuser
def initialize
	
end
 def insert(db,username,age,sex)
	rs = db.query("INSERT INTO users VALUES('','#{$username}','#{$age}','#{$sex}')")
 end
 def showsex(db, sex)
	rs = db.query("SELECT * FROM users WHERE sex='#{$sex}'")
  
    n_rows = rs.num_rows   
    puts "Co #{n_rows} #{$sex} trong dtb"
    
    n_rows.times do
        puts rs.fetch_row.join("\s")
 end
 end
def insertAR(user)
	rs = db.query("INSERT INTO users VALUES('','#{$username}','#{$age}','#{$sex}')")
 end
end
require 'mysql'
db = Mysql.new('localhost', 'root', '123456', 'rubytest')
ur = Myuser.new
u = User.new
$dem=0
require 'mysql2'
i=Input.new
1.times do 
i.nhapuser
usr = User.create(name: $username, age: $age, sex: $sex)
usr.save
end
$sex = "Nu"
ur.showsex(db, $sex)
$sex = "Nam"
ur.showsex(db, $sex)
n=Login.new
n.dangnhap
db.close
