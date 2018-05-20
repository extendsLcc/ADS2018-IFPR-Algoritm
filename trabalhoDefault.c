Algoritmo "TrabalhoAvaliativo"
// Versao 1.2 - Menu Principal
Var
	OpcaoPrincipal, OpcaoSubMenu: caractere
	RodaPrograma: caractere
	index, 	a, b, c , cor, 	x, y , result,	contador, fatorial, num ,	soma : inteiro
	

inicio
	  
	OpcaoPrincipal := "9"
	OpcaoSubMenu := "-1"
	RodaPrograma := "S"
	
	enquanto (RodaPrograma = "S") ou (RodaPrograma = "s") faca
	
		// main menu
		
		limpatela()
		escreval("=======================================")
		escreval("|      MENU TRABALHO AVALIATIVO       |")
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
			
				// =====   INICIO SUBMENU ESTRUTURA DE SELEÇÃO
			
				limpatela()
				escreval("=======================================")
				escreval("|     MENU Estruturas de Seleção      |")
				escreval("=======================================")
				escreval("| (1) Maior_2_Numeros_v2              |")
				escreval("| (2) SomarCS                         |")
				escreval("| (3) Menu_cores                      |")
				escreval("| (0) Voltar ao menu Principal        |")
				escreval("=======================================")
				escreva("Selecione uma opcao do menu: ")
				leia(OpcaoSubMenu)
				
				escolha OpcaoSubMenu
					
					caso "0"
					
						// exit submenu
					
					caso "1"
					
						// =====   INICIO Maior_2_Numeros_v2  
						
						escreva( "Digite um número: " )
						leia(a)
						escreva( "Digite outro número: " )
						leia(b)
						
						se( a > b ) entao
						
							escreval( "O maior número é: " , a )
							
						senao
						
							se( a < b ) entao
							
								escreval( "O Maior número é: ", b )
								
							senao
							
								escreval( "Os dois números digitados são iguais" )
								
							fimse
							
						fimse
						
						// =====   FIM Maior_2_Numeros_v2  
					
					caso "2"
					
						// =====  INICIO SomarCS
					
						escreva( "Digite o 1ª número: " )
						leia(a)
						escreva( "Digite o 2ª número: " )
						leia(b)
						c := a + b
						
						se( c > 10 ) entao
						
							escreval( "A soma dos números é: " , c )
							
						fimse
						
						// =====  FIM SomarCS
					
					caso "3"
					
						// =====  INICIO Menu_cores
					
						escreval( " ( 1 ) Verde" )
						escreval( " ( 2 ) Vermelho" )
						escreval( " ( 3 ) Azul" )
						leia(cor)
						
						escolha cor
						
							caso 1
								
								escreval( "Cor verde escolhida" )
								
							caso 2
								
								escreval( "Cor vermelha escolhida" )
								
							caso 3
								
								escreval( "Cor azul escolhida" )
						
							outrocaso
								
								escreval( "Opção Invalida" )
								
						fimescolha

						// =====  FIM Menu_cores
					
					outrocaso
				
				fimescolha
				
				
				// =====   FIM SUBMENU ESTRUTURA DE SELEÇÃO
				
			caso "2"
						
				// =====   INICIO SUBMENU LAÇO DE REPETIÇÃO PARA
				
				limpatela()
				escreval("=======================================")
				escreval("|     MENU Laço de repetição PARA     |")
				escreval("=======================================")
				escreval("| (1) Tabuada completa                |")
				escreval("| (2) Fatorial                        |")
				escreval("| (3) Somatoria 100 primeiros numeros |")
				escreval("| (0) Voltar ao menu Principal        |")
				escreval("=======================================")
				escreva("Selecione uma opcao do menu: ")
				leia(OpcaoSubMenu)
				
				escolha OpcaoSubMenu
					
					caso "0"
					
						// exit submenu
					
					caso "1"
					
						// =====   INICIO Tabuada completa  
						
						para x de 0 ate 10 passo 1 faca
							
							para y de 0 ate 10 passo 1 faca
							
								result := x * y
								escreval( x, "x", y, "=", result )
								
							fimpara
							
						fimpara
						
						// =====   FIM Tabuada completa 
					
					caso "2"
					
						// =====  INICIO Fatorial
					
						contador := 1
						fatorial := 1
						escreval( "Fatorial de qual número?" )
						
						repita
						
							leia( num )
							
							se( num < 0 ) entao
							
								escreval( "Entrada inválida, digite um numero maior que zero" )
							
							fimse
						
						ate( num >= 0 )
						
						para contador de 1 ate num passo 1 faca
						
							fatorial := fatorial * contador
							
						fimpara
						
						escreval("O fatorial de ",num," equivale a ", fatorial )
						
						// =====  FIM Fatorial
					
					caso "3"
					
						// =====  INICIO Somatoria 100 primeiros numeros
					
						index := 1
						soma := 0
						
						para index de 0 ate 100 passo 1 faca
						
							soma := soma + index
						
						fimpara
						
						escreval("A somatória dos 100 primeiros números positivos é ",soma )

						// =====  FIM Somatoria 100 primeiros numeros
					
					outrocaso
				
				fimescolha
				
				// ====   FIM SUBMENU LAÇO DE REPETIÇÃO PARA
				
			caso "3"
			
				// =====   INICIO SUBMENU LAÇO DE REPETIÇÃO ENQUANTO
				
				limpatela()
				escreval("=======================================")
				escreval("|   MENU Laço de repetição ENQUANTO   |")
				escreval("=======================================")
				escreval("| (1) Tabuada completa                |")
				escreval("| (2) Fatorial                        |")
				escreval("| (3) Somatoria 100 primeiros numeros |")
				escreval("| (0) Voltar ao menu Principal        |")
				escreval("=======================================")
				escreva("Selecione uma opcao do menu: ")
				leia(OpcaoSubMenu)
				
				escolha OpcaoSubMenu
					
					caso "0"
					
						// exit submenu
					
					caso "1"
					
						// =====   INICIO Tabuada completa  
						
						x := 0
						x := 0
						
						enquanto ( x <= 10 ) faca
							
							enquanto ( y <= 10 ) faca
							
								result := x * y
								escreval( x, "x", y, "=", result )
								y := y + 1
							
							fimenquanto
							
							x := x + 1
							y := 0
							
						fimenquanto
						
						// =====   FIM Tabuada completa 
					
					caso "2"
					
						// =====  INICIO Fatorial
					
						contador := 1
						fatorial := 1
						escreval( "Fatorial de qual número?" )
						
						repita
						
							leia( num )
							
							se( num < 0 ) entao
							
								escreval( "Entrada inválida, digite um numero maior que zero" )
							
							fimse
						
						ate( num >= 0 )
						
						enquanto ( contador <= num ) faca
							
							fatorial := fatorial * contador
							contador := contador + 1

						fimenquanto
							
						escreval("O fatorial de ",num," equivale a ", fatorial )
						// =====  FIM Fatorial
					
					caso "3"
					
						// =====  INICIO Somatoria 100 primeiros numeros
					
						index := 0
						soma := 0
						
						enquanto ( index <= 100 ) faca
							
							soma := soma + index
							index := index + 1
						
						fimenquanto
						
						escreval("A somatória dos 100 primeiros números positivos é ",soma )

						// =====  FIM Somatoria 100 primeiros numeros
					
					outrocaso
				
				fimescolha
				
				// ====   FIM SUBMENU LAÇO DE REPETIÇÃO ENQUANTO
				
			caso "4"
			
				// =====   INICIO SUBMENU LAÇO DE REPETIÇÃO REPITA
				
				limpatela()
				escreval("=======================================")
				escreval("|    MENU Laço de repetição REPITA    |")
				escreval("=======================================")
				escreval("| (1) Tabuada completa                |")
				escreval("| (2) Fatorial                        |")
				escreval("| (3) Somatoria 100 primeiros numeros |")
				escreval("| (0) Voltar ao menu Principal        |")
				escreval("=======================================")
				escreva("Selecione uma opcao do menu: ")
				leia(OpcaoSubMenu)
				
				escolha OpcaoSubMenu
					
					caso "0"
					
						// exit submenu
					
					caso "1"
					
						// =====   INICIO Tabuada completa  
							
						x := 0
						x := 0
						
						repita 
						
							repita
							
								result := x * y
								escreval( x, "x", y, "=", result )
								y := y + 1
							
							ate ( y > 10 )
							
							x := x + 1
							y := 0
						
						ate ( x > 10 )
						
						// =====   FIM Tabuada completa 
					
					caso "2"
					
						// =====  INICIO Fatorial
					
						contador := 1
						fatorial := 1
						escreval( "Fatorial de qual número?" )
						
						repita
						
							leia( num )
							
							se( num < 0 ) entao
							
								escreval( "Entrada inválida, digite um numero maior que zero" )
							
							fimse
						
						ate( num >= 0 )
						
						repita
						
							fatorial := fatorial * contador
							contador := contador + 1
						
						ate( contador > num )
						
						
						escreval("O fatorial de ",num," equivale a ", fatorial )
						
						// =====  FIM Fatorial
					
					caso "3"
					
						// =====  INICIO Somatoria 100 primeiros numeros
					
						index := 0
						soma := 0
						
						repita
						
							soma := soma + index
							index := index + 1
						
						ate( index > 100 )
						
						escreval("A somatória dos 100 primeiros números positivos é ",soma )

						// =====  FIM Somatoria 100 primeiros numeros
					
					outrocaso
				
				fimescolha
				
				// ====   FIM SUBMENU LAÇO DE REPETIÇÃO REPITA
				
			caso "5"
			
				escreval("(5) Proximo Assunto")
				
			outrocaso
			
				escreval("Por favor! Escolha uma das opcoes disponives.")

		fimescolha
		
		se (RodaPrograma = "S") ou (RodaPrograma = "s") entao

			escreva("Deseja continuar utilizando o programa? (S/N): ")
			leia(RodaPrograma)
	
		fimse
	  
	fimenquanto
	
	escreval("Obrigado por utilizar nossos produtos!")
	escreval("Organizacoes Tabajara")
	
fimalgoritmo

	// ===================  FIM MAIN