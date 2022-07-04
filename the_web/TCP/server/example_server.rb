require 'socket'

server = TCPServer.new(2345)

puts "The server is running. Open a new terminal to make requests."


loop do
  Thread.start(server.accept) do |socket|
    loop do 
      socket.puts "What do you say? (type 'quit' to exit)"
      they_said = socket.gets.chomp
      if they_said.downcase == "quit"
        break
      else
        socket.puts "You said: #{they_said}. Goodbye!"
      end
    end
    socket.close
  end
end

#find pid for server 
  #lsof -wni tcp:2345
#kill pif for server
  #kill PID 
