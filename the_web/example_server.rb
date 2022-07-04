require 'socket'

server = TCPServer.new(2345)

puts "The server is running. Open a new terminal to make requests."

puts "Type 'quit' to close server"

quit = gets.chomp.downcase

if quit == "quit" 
  exit
end

loop do
  Thread.start(server.accept) do |socket|
    socket.puts "What do you say?"
    they_said = socket.gets.chomp
    socket.puts "You said: #{they_said}. Goodbye!"
    socket.close
  end
end

#find pid for server 
  #lsof -wni tcp:2345
#kill pif for server
  #kill PID 

#socket.close