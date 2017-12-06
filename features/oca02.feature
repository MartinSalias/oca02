Feature: Juego de Dados

Scenario: Iniciar Partida
	Given Voy al Sitio
	 Then Veo "UNO"

Scenario: Tira el dado
	Given Voy al Sitio
   When Voy a pagina pantallajuego 
   When Tiro el Dado
	 Then Veo en campo resultado "Resultado Jugador"

Scenario: Se planta
	Given Voy al Sitio
   When Voy a pagina pantallajuego 
   When Me Planto
	 Then Veo en campo resultado "Resultado Jugador"
