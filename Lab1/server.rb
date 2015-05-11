require 'socket'

def process_command command, client
	puts command
	case command
		when "Time"
			 client.write "#{Time.now}\n"
		else
			client.write "Can you elaborate on that?\n"
	end
end



server = TCPServer.new "127.0.0.1", 4321

loop do
	Thread.start(server.accept) do |client|  
	    print(client, " is accepted\n")  
	    while data = client.gets
	    	abort("Hastalavista command") if data.chomp == "Hastalavista"
			process_command data.chomp, client
		end
  	end
end