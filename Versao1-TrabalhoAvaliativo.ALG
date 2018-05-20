Algoritmo "TrabalhoAvaliativo"
// Versao 1 - Menu Principal
Var
	OpcaoPrincipal: caractere
	RodaPrograma: caractere

Inicio

	OpcaoPrincipal := "9"
	RodaPrograma := "S"
	// INICIO ENQUANTO - Este laco de repeticao ira controlar o menu principal
	
	enquanto (RodaPrograma = "S") ou (RodaPrograma = "s") faca
	
		limpatela()
		escreval("=======================================")
		escreval("|      MENU TRABALHO AVALITIVO        |")
		escreval("=======================================")
		escreval("| (1) Exemplos Estruturas de Selecao  |")
		escreval("| (2) Laco Para                       |")
		escreval("| (3) Laco Enquanto                   |")
		escreval("| (4) Laco Repita                     |")
		escreval("| (5) Proximo Assunto                 |")
		escreval("| (0) Sair do Programa                |")
		escreval("=======================================")
		escreva("Selecione uma opcao do menu: ")
		leia(OpcaoPrincipal)
		
		escolha OpcaoPrincipal
			caso "0"
			RodaPrograma := "N"
			caso "1"
				escreval("(1) Exemplos Estruturas de Selecao")
				// aqui voce ira fazer um submenu (escolha-caso-fimescolha)
				//      escolha OpcaoSelecao
				//           caso X
				//           caso Y
				//           outrocaso
				//           fimescolha
			caso "2"
				escreval("(2) Laco Para")
				// aqui voce ira fazer um submenu (escolha-caso-fimescolha)
				//      escolha OpcaoSelecao
				//           caso X
				//           caso Y
				//           outrocaso
				//           fimescolha
			caso "3"
				escreval("(3) Laco Enquanto")
				// aqui voce ira fazer um submenu (escolha-caso-fimescolha)
				//      escolha OpcaoSelecao
				//           caso X
				//           caso Y
				//           outrocaso
				//           fimescolha
			caso "4"
				escreval("(4) Laco Repita")
				// aqui voce ira fazer um submenu (escolha-caso-fimescolha)
				//      escolha OpcaoSelecao
				//           caso X
				//           caso Y
				//           outrocaso
				//           fimescolha
			caso "5"
				escreval("(5) Proximo Assunto")
				// aqui voce ira fazer um submenu (escolha-caso-fimescolha)
				//      escolha OpcaoSelecao
				//           caso X
				//           caso Y
				//           outrocaso
				//           fimescolha
			outrocaso
			
				escreval("Por favor! Escolha uma das opcoes disponives.")
				
		fimescolha
		
		se (RodaPrograma = "S") ou (RodaPrograma = "s") entao
		
			escreva("Deseja continuar utilizando o programa? (S/N): ")
			leia(RodaPrograma)
			escreval()
			escreval("Obrigado por utilizar nossos produtos!")
			escreval("Organizacoes Tabajara")
			
		fimse
		
	fimenquanto // FINAL ENQUANTO - Este laco de repeticao esta controlando o menu principal
	
Fimalgoritmo