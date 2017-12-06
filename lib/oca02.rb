class Uno

	def initialize
		@puntajeA=0
		@puntajeB=0
		@valordado=0
		@turno="A"
	end

	def cerearjugadorA
		@puntajeA=0	
	end

	def mostrarjugadorA
		return @puntajeA	
	end

	def cerearjugadorB
		@puntajeB=0	
	end

	def mostrarjugadorB
		return @puntajeB	
	end

	def tirardado
		@valordado = rand(6) + 1
		return @valordado
	end

	def acumularjugadorA(valor)
		return @puntajeA += valor
	end

	def acumularjugadorB(valor)
		return @puntajeB += valor
	end

	def analizojugada(valor)
		if valor==1  ## pierde los puntos y cambia de turno
			if @turno=="A"
				@puntajeA=0
				@turno="B"
				@valordado=0
			else
				@puntajeB=0
				@turno="A"
				@valordado=0
			end
			@valordado=0
		else
			if @turno=="A"
				@puntajeA += valor
 			else
				@puntajeB += valor
			end

		end
		if @puntajeA > 10 ||  @puntajeB > 10
			return 1  ## Ganador
		else
			return 0  ## aun no ganó nadie
		end
	end

	def quienjuega
		return @turno
	end
  def plantarse
		if @turno=="A"
					@turno="B"
		else
					@turno="A"
		end
	end
end

