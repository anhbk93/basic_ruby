=begin
aFile = File.new("input.txt","a+")=end

=begin
if aFile
	aFile.syswrite("added")
	size = File.size?("input.txt")
	p size
	#aFile.seek(-size, IO::SEEK_END)
	aFile.seek(0,IO::SEEK_SET)
	p aFile.sysread(size)
	#aFile.rewind
	#content = aFile.sysread(size)
	#p content
	else
		p "Unable to open file"
	end

=end
# aFile = File.new("input.txt", "r+")
# if aFile
#    aFile.syswrite("ABCDEF")
#    aFile.each_byte {|ch| print ch '\n' }
# else
#    puts "Unable to open file!"
# end
=begin
arr = IO.readlines("input.txt")
IO.foreach("input.txt") {|block| puts block.delete("\n")<<"  00 "}
=end
=begin
File.rename("input.txt","_input.txt")
=end
=begin
File.open("file.rb","r").sysread(File.size?("file.rb")) if File::exists?( "file.rb" )
=end
Dir.chdir("/home/navait93/nava/new")
puts  Dir.pwd
Dir.chdir("/home/navait93/nava")
$i = 1
=begin
puts Dir.entries("/home/navait93/nava").join("\n #{$i++}")
=end
=begin
File.new("file.oll","a+")
Dir.foreach("/home/navait93/nava") do |en|
	puts "   #{$i}   "<<en 
	$i = $i+1
end
File.delete("file.oll")
Dir.foreach("/home/navait93/nava") do |en|
	puts "   #{$i}   "<<en 
	$i = $i+1
end
=end
require 'tmpdir'
   tempfilename = File.join(Dir.tmpdir, "tingtong")
   tempfile = File.new(tempfilename, "w")
   tempfile.puts "This is a temporary file"
   tempfile.close
   File.delete(tempfilename)






