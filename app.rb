require 'sinatra'
require 'sinatra/reloader'
require "better_errors"

require './greeter'

also_reload './greeter.rb'


configure :development do
    use BetterErrors:: Middleware
    BetterErrors.application_root = __dir__
end


# before filter
before do
  @greeter = Greeter.new
  
end

# our application's routes
get '/hi' do
  @greeter.greet
end

# return quotes matching a tag
get '/quote/:tag' do
    # raise "tag must not be anything but 'life'" if params[:tag] != 'life' 
    @greeter.quote params[:tag]

end
    

# default /quote route
get '/quote' do
  @greeter.quote
end

get '/photo' do
  send_file "public/#{rand(1..4)}.jpg"
end





