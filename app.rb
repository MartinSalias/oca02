require 'sinatra'
require "./lib/oca02.rb"

get '/' do		
		@@game = Uno.new
		@@valordado = 0
		@@resultado = 0
		@@turno =  @@game.quienjuega
    erb :iniciopartida
end

get '/jugar' do	
		@@game.analizojugada(@@valordado)
		@@turno = @@game.quienjuega
		@@puntajeA = @@game.mostrarjugadorA
		@@puntajeB = @@game.mostrarjugadorB
    erb :pantallajuego
end

post '/tirardado' do	
		@@valordado = @@game.tirardado
		@@resultado = @@game.analizojugada(@@valordado)
		if @@resultado == 1
		   @@game = Uno.new
		   @@valordado = 0
		   @@resultado = 0
		   @@turno =  @@game.quienjuega
			erb :ganadorjuego
		else
			@@turno = @@game.quienjuega
			@@puntajeA = @@game.mostrarjugadorA
			@@puntajeB = @@game.mostrarjugadorB
			erb :pantallajuego
		end
    
end

post '/plantarse' do	
		@@game.plantarse
		@@turno = @@game.quienjuega
		@@puntajeA = @@game.mostrarjugadorA
		@@puntajeB = @@game.mostrarjugadorB
    erb :pantallajuego
end
