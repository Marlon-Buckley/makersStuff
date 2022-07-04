require 'socket'

loop do #this loops this client into an endless conversation with the server. 
  socket = TCPSocket.new('localhost', 2345)
  puts socket.gets #prints the socket.puts "HELLO CLI...." string from server
  sleep(1)
  puts "Wow what a rude server... I'm going to say Sarah" #simply prints string to terminal
  sleep(1)
  socket.puts "Sarah" #puts 'Sarah' into the TCPSocket #socket object? This is passed to the server
  sleep(1)
  puts socket.gets #This prints the socket.puts "THAT'S A LOV..." string from server?
  sleep(3)
end


