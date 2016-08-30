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
  "<div>
    <img src='http://bit.ly/1eze8aE'>
   </div>"
end
