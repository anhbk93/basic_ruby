=begin
puts "Input data:"
content = gets()
=end

content = "Trăng muộn cao nguyên toả lối mòn
Ấm nồng trời rạng mảnh hồn con
Đêm như muốn tạc lòng thờ phượng
Thiên Chúa trao duyên với nước non 
Hoa sương ước nguyện tấm linh hồn
Tận hiến tình son mỗi sớm hôm
Sông nước Cha con trời thánh ước
Tin yêu thẳng lối đến thiên môn"
ff = File.open( "input.txt", "w+:UTF-8") # open a file for read, specify a encoding
ff.write(content)
ff.rewind
i = 0
size = ff.readlines.size
ff.rewind
#while i < size - 1  do  
 puts content.gsub("on","**")         # print each line
#end
content = content.gsub("on","**")
puts content.gsub("am","")
ff.rewind
#p ff.readlines.gsub("am","**")