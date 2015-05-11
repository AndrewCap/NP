require 'socket'

#u!$@chi$@chi!b00mb00m

server = Socket.new :INET, :STREAM
p server.bind Addrinfo.tcp('127.0.0.1', '4322')

server.listen(5)

loop do
	client, client_addr = server.accept
	while data = client.gets
		puts data
		client.send("astrsta")
	end
	client.close
end