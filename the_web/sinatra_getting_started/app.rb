require 'sinatra'
require "sinatra/reloader" if development?

get '/' do
  "Hello World"
end

get '/random-cat' do
  @random_name = ["amigo", "misty", "almond"].sample
  erb(:index)        
end

get '/named-cat' do
  p params
  @name = params[:name]
  erb(:index)


end


# get '/secret' do
#   "This is a seceret shhhhh!!!"
# end

# get '/test' do
#   "This is a test!!!"
# end

# get '/favicon.ico' do
#   <link rel="icon" href="/favicon.ico" />
# end