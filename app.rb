require 'sinatra'

get '/' do
    @@partido = Uno.new
#    erb :tenis   
end

