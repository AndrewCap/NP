require 'socket'

#u!$@chi$@chi!b00mb00m

host = "127.0.0.1"
port = 4321

server = TCPSocket.open(host, port)

loop do
	while data = gets
		server.puts data
		puts server.gets
	end
end


client.close