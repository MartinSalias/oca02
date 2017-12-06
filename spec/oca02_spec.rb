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

	it "Tirar dado" do
		partido = Uno.new
		partido.tirardado
#		partido.cerearjugadorB
#		partido.mostrarjugadorB.should == 0
	end

end

	
