Feature: Juego de Dados

Scenario: Iniciar Partida
	Given Voy al Sitio
	 Then Veo "Dados 1.0"

Scenario: Tira dado con resultado 1
	Given Voy al Sitio
   When Tirar Dado 
	 Then Veo en campo resultado "1"
