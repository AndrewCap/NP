# Laboratory work #1

## Subject:
	Simple client/server application

## Objective:
	Familiarize yourself with the BSD sockets API by writing a simple server and a client.

## Requirements:
	- The program must rely on the BSD sockets API, not some other library which is an abstraction on top of BSD sockets.
	- TCP must be used at the transport layer.
	- IP must be used at the network layer.

## Work
The files are `server.rb` and `client.rb`
The initiation process is the following: run `ruby server.rb` and after that `ruby client.rb`. The commands are introduced only from client part (they're described below).

## Implemented commands:
	- `Time` 	- returns current server time to client
	- `Marco` 	- returns `Polo` to client
	- `Knock, Knock` - returns `Who's there?`
	- `random string` - returns `Can you elaborate on that?`
	- `random string?` - returns `42`
	- `Hastalavista` - closes server
	- `Close` - closes connection with current client

### Conclusion
Working on this laboratory tasks I got a basic idea how communication between devices works and implemented knowledge accumulated during classes. The main problem encountered was chosing a programming language, other difficulties were challenges: like what library to use, what is different between client and server and which commands to implement. It is easier being already on track. I still have some reasearch to do on file transmission part.

