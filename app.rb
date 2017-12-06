require 'sinatra'
require "./lib/oca02.rb"

get '/' do
    erb :iniciopartida
end

get '/jugar' do	
		@@game = Uno.new
		@@puntajeA = @@game.cerearjugadorA
		@@puntajeB = @@game.cerearjugadorB
    erb :pantallajuego
end

get '/tirardado' do	
		@@resultado = @@game.tirardado
    erb :pantallajuego
end
