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
  @name = params[:name]
  erb :index
end

post '/named-cat' do
  p params
  @name = params[:name]
erb :index
end

get '/cat_form'  do
  erb :cat_form
end
