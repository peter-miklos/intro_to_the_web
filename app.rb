require 'sinatra'
set :session_secret, 'super secret'
get '/' do
   "Hello"
end

get '/secret' do
  "secret page"
end
