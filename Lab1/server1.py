#Here is a simple example of a server written in Python.
from socket import * 
#note that you could have written import socket
#then you'd have to write "socket." as a prefix to access stuff in this module
 
 
response="I am here to serve. I want to talk about it"
 
#initialize the socket with default settings
listeningSocket = socket()
try:
	#bind the socket to an interface
	listeningSocket.bind( ("127.0.0.1", 10455) )
	print "bind = OK"
except:
	#it didn't work, perhaps there is no such interface?
	print "bind = Error"
 
#make it listen
listeningSocket.listen(5)
print listeningSocket #print the handle to the socket, so you can see exists
 
#accept an incoming connection
newAllocatedSocket, address = listeningSocket.accept()
print address, newAllocatedSocket #see some data about the connected client
 
newAllocatedSocket.send(response) #send a message to the client
data = newAllocatedSocket.recv(10) #read 10 bytes
print data
 
#newAllocatedSocket.send(gethostname( ))
 
#close everything and get outta here
newAllocatedSocket.close()
listeningSocket.close()