require "./lib/oca02.rb"

describe "Juego uno" do

	it "Iniciar Partida" do
		partido = Uno.new
		partido.mostrarjugadorA.should == 0
		partido.mostrarjugadorB.should == 0
	end

	it "Cerear jugador A" do
		partido = Uno.new
		partido.cerearjugadorA
		partido.mostrarjugadorA.should == 0
	end

	it "Cerear jugador B" do
		partido = Uno.new
		partido.cerearjugadorB
		partido.mostrarjugadorB.should == 0
	end

	it "sumar 5+3+2 jugador A" do
		partido = Uno.new
		partido.acumularjugadorA(5)
		partido.acumularjugadorA(3)
		partido.acumularjugadorA(2)
		partido.mostrarjugadorA.should == 10
	end

	it "sumar 5+2 jugador B" do
		partido = Uno.new
		partido.acumularjugadorB(5)
		partido.acumularjugadorB(2)
		partido.mostrarjugadorB.should == 7
	end


	it "Analizo jugada A +50" do
		partido = Uno.new
#		partido.tirardado
		partido.analizojugada(50)
		partido.mostrarjugadorA.should==50

	end

	it "Analizo jugad: Gana A" do
		partido = Uno.new
#		partido.tirardado
		partido.analizojugada(50)
		partido.analizojugada(55).should == 1
		partido.mostrarjugadorA.should==105

	end

	it "Analizo jugad: A saca 1" do
		partido = Uno.new
#		partido.tirardado
		partido.analizojugada(50)
		partido.analizojugada(1).should == 0
		partido.mostrarjugadorA.should==0
		partido.mostrarjugadorB.should == 0
		partido.quienjuega.should == "B"
	end
  it "Jugador se planta" do
		partido = Uno.new
		partido.analizojugada(50)
		partido.mostrarjugadorA.should == 50
	  partido.plantarse
		partido.mostrarjugadorA.should == 50
		partido.quienjuega.should == "B"
		partido.analizojugada(50)
		partido.mostrarjugadorB.should == 50
	  partido.plantarse
		partido.quienjuega.should == "A"
		partido.mostrarjugadorA.should == 50
		partido.mostrarjugadorB.should == 50

  end

#	it "Tirar dado" do
#		partido = Uno.new
#		partido.tirardado.sholud == 4
#		
#		partido.cerearjugadorB
#		partido.mostrarjugadorB.should == 0
#	end

end

	
