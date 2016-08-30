require 'sinatra'
set :session_secret, 'super secret'

@arr = ["jo", "stf", "summer"].sample

get '/' do
   "Hello"
end

get '/secret' do
  "secret page"
end

get '/random-cat' do
  @arr = ["jo", "stf", "summer"].sample
erb :index
end

get '/named-cat' do
  p params 
  @arr = params[:name]
erb :index
end
