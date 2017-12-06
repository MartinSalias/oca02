class Uno

	def initialize
#		@vtanteador= %w{Cero Quince Treinta Cuarenta}
		@jugadorA=0
		@jugadorB=0
	end

	def cerearjugadorA
		@jugadorA=0	
	end
	def mostrarjugadorA
		return @jugadorA=0	
	end

	def cerearjugadorB
		@jugadorB=0	
	end
	def mostrarjugadorB
		return @jugadorB=0	
	end
	def tirardado
		return rand(6) + 1
	end
end
