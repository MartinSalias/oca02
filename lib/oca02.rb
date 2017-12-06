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
		if valor==1
			if @turno=="A"
				@puntajeA=0
				@turno="B"
			else
				@puntajeB=0
				@turno="A"
			end
		else
			if @turno=="A"
				@puntajeA += valor
 			else
				@puntajeB += valor
			end
			if @puntajeA > 100 ||  @puntajeB > 100
				return 1
			else
				return 0
			end
		end
	end
end

