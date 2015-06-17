require 'socket'

host = 'torrentsmd.com'
port = 80

content_type = Hash.new
content_type = {
  'text/html' => 'html',
  'text/plain' => 'txt',
  'image/png' => 'png',
  'image/jpeg' => 'jpg'
}

filetype = ''

to_donwnload = []


s = TCPSocket.open host, port
s.puts "GET / HTTP/1.0\r\n"
s.puts "\r\n"


8.times  do	
	line = s.gets
  puts line.chop
  if line.include?("Content")
  	filetype = content_type[line.split[1][0..-2]]
  end
end

page = File.open("index.#{filetype}", 'w')

while line = s.gets
	page.puts line.chop
	puts line.split
end

page.close

s.close