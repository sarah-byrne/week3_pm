require 'sinatra'
require 'shotgun'

set :session_secret, 'super secret'

get '/' do
  "Hello world"
end

get '/secret' do
  "deepest darkest secret!"
end

get '/third' do
  "deepest darkest secret!"
end

get '/random-cat' do
  @name = ["Amigo", "Oscar", "Viking"].sample
  erb(:index)
end

get '/named-cat' do
  p params
  @name = params[:name]
  erb(:index)
end
