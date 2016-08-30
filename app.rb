require 'sinatra'
require 'shotgun'
set :session_secret, 'super secret'

get '/' do
  'hello!'
end

get '/secret' do
  'secret message!'
end

get '/newsecret' do
  'see you'
end

get '/random-cat' do
  @name = ["Amigo", "Oscar", "Viking"].sample
  erb(:index)
end

get '/named-cat' do
  p params[:name]
  @name = params[:name]
  erb(:index)
end
