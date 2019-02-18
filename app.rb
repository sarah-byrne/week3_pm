require 'sinatra'
require 'shotgun'
require 'erb'

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

get '/cat' do
  send_file 'cat_image.html'
end
