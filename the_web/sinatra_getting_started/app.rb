require 'sinatra'
require "sinatra/reloader" if development?

get '/' do
  "Hello World"
end

get '/cat' do
  "<div style='border: 56px dashed red'>
  <img src='http://placekitten.com/750/200'>
</div>"
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