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

post '/named-cat' do
  p params
  @name = params[:name]
  erb(:index)
end

get '/cat_form' do
  erb(:cat_form)
end
