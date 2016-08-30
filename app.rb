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

get '/cat' do
  erb(:index)
end
