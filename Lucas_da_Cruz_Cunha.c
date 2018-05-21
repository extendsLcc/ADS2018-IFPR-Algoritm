Algoritmo "TrabalhoAvaliativo"
// Versao 1.2 - Menu Principal
Var
	OpcaoPrincipal, OpcaoSubMenu: caractere
	index, 	a, b, c , cor, 	x, y , result,	contador, fatorial, num ,	soma : inteiro
	control: logico

	//Vars tic-tac-toe
	table: vetor [1..3,1..3] de caractere
	line: vetor[1..3] de caractere
	player, linha: caractere
	row, colunm: inteiro
	counter, tie: inteiro
	exit: logico
	
inicio
	  
	OpcaoPrincipal := "9"
	OpcaoSubMenu := "-1"
	control := verdadeiro
	
	repita
	
		// main menu
		
		se control entao
			
			limpatela()
			escreval("=======================================")
			escreval("|      MENU TRABALHO AVALIATIVO       |")
			escreval("=======================================")
			escreval("| (1) Exemplos Estruturas de Selecao  |")
			escreval("| (2) Laco Para                       |")
			escreval("| (3) Laco Enquanto                   |")
			escreval("| (4) Laco Repita                     |")
			escreval("| (5) Array/Vetor e Matriz            |")
			escreval("| (0) Sair do Programa                |")
			escreval("=======================================")
		
		fimse
		
		control := verdadeiro
		escreva("Selecione uma opcao do menu: ")
		leia(OpcaoPrincipal)
		
		escolha OpcaoPrincipal
			caso "0"
			
				// CLOSE
				OpcaoPrincipal := "0"

			caso "1"
			
				repita
				
					//! =====   INICIO SUBMENU ESTRUTURA DE SELEÇÃO
				
					se control entao
					
						limpatela()
						escreval("=======================================")
						escreval("|     MENU Estruturas de Seleção      |")
						escreval("=======================================")
						escreval("| (1) Maior_2_Numeros_v2              |")
						escreval("| (2) Par ou Impar                    |")
						escreval("| (3) Menu_cores                      |")
						escreval("| (0) Voltar ao menu Principal        |")
						escreval("=======================================")
						
					fimse
					
					control := verdadeiro
					escreva("Selecione uma opcao do menu: ")
					leia(OpcaoSubMenu)
					
					escolha OpcaoSubMenu
						
						caso "0"
						
							OpcaoSubMenu := "3"
							control := falso
							// exit submenu
						
						caso "1"
						
							//! =====   INICIO Maior_2_Numeros_v2  
							
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
							
							//! =====   FIM Maior_2_Numeros_v2  
						
						caso "2"
						
							//! =====  INICIO Par ou Impar
						
							escreva( "Digite um número: " )
							leia(a)
							
							se( a % 2 = 0 ) entao
							
								escreval( "O número digitado é par" )
								
							senao
							
								escreval( "O número digitado é impar" )
							
							fimse
							
							//! =====  FIM Par ou Impar
						
						caso "3"
						
							//! =====  INICIO Menu_cores
						
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

							//! =====  FIM Menu_cores
						
						outrocaso
						
							escreval("Opção Invalida!")
							control := falso
					
					fimescolha
					
					se control entao
					
						escreval("")
						escreval("|         Selecione uma das opções             |")
						escreval("|(1) Voltar para Submenu Estruturas de Selecao |")
						escreval("|(2) Voltar para menu principal                |")
						escreval("|(3) Sair do programa                          |")
						
						repita
							
							leia(OpcaoSubMenu)
							
							escolha OpcaoSubMenu
							
								caso "1"
								
									control := verdadeiro
								
								caso "2"
									
									OpcaoSubMenu := "3"
									
								caso "3"
								
									OpcaoPrincipal := "0"
									
								outrocaso
								
									OpcaoSubMenu := "-1"
									escreval( "Opção Invalida" )
									escreva( "por favor selecione uma das opções disponível: " )
									
							fimescolha
						
						ate( (OpcaoSubMenu = "1") ou (OpcaoSubMenu = "2") ou (OpcaoSubMenu = "3") )
						
					fimse
					
				ate ( OpcaoSubMenu = "3" )
				
				control := verdadeiro
				//! =====   FIM SUBMENU ESTRUTURA DE SELEÇÃO
				
			caso "2"
						
				//! =====   INICIO SUBMENU LAÇO DE REPETIÇÃO PARA
					
				repita
					
					se control entao
						
						limpatela()
						escreval("=======================================")
						escreval("|     MENU Laço de repetição PARA     |")
						escreval("=======================================")
						escreval("| (1) Tabuada completa                |")
						escreval("| (2) Fatorial                        |")
						escreval("| (3) Somatoria 100 primeiros numeros |")
						escreval("| (0) Voltar ao menu Principal        |")
						escreval("=======================================")
						
					fimse
					
					control := verdadeiro
					escreva("Selecione uma opcao do menu: ")
					leia(OpcaoSubMenu)
					
					escolha OpcaoSubMenu
						
						caso "0"
						
							// exit submenu
							OpcaoSubMenu := "3"
							control := falso
						
						caso "1"
						
							//! =====   INICIO Tabuada completa  
							
							para x de 0 ate 10 passo 1 faca
							
								escreval("Tabuada do ",x)
								
								para y de 0 ate 10 passo 1 faca
								
									result := x * y
									escreval( x, "x", y, "=", result )
									
								fimpara
								
								escreval("")
								
							fimpara
							
							//! =====   FIM Tabuada completa 
						
						caso "2"
						
							//! =====  INICIO Fatorial
						
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
							
							//! =====  FIM Fatorial
						
						caso "3"
						
							//! =====  INICIO Somatoria 100 primeiros numeros
						
							index := 1
							soma := 0
							
							para index de 0 ate 100 passo 1 faca
							
								soma := soma + index
							
							fimpara
							
							escreval("A somatória dos 100 primeiros números positivos é ",soma )

							//! =====  FIM Somatoria 100 primeiros numeros
						
						outrocaso
						
							escreval("Opção Invalida!")
							control := falso
					
					fimescolha
					
					se control entao
					
						escreval("")
						escreval("|         Selecione uma das opções              |")
						escreval("|(1) Voltar para Submenu Laço de repetição PARA |")
						escreval("|(2) Voltar para menu principal                 |")
						escreval("|(3) Sair do programa                           |")
						
						repita
							
							leia(OpcaoSubMenu)
							
							escolha OpcaoSubMenu
							
								caso "1"
								
									control := verdadeiro
								
								caso "2"
									
									OpcaoSubMenu := "3"
									
								caso "3"
								
									OpcaoPrincipal := "0"
									
								outrocaso
								
									OpcaoSubMenu := "-1"
									escreval( "Opção Invalida" )
									escreva( "por favor selecione uma das opções disponível: " )
									
							fimescolha
						
						ate( (OpcaoSubMenu = "1") ou (OpcaoSubMenu = "2") ou (OpcaoSubMenu = "3") )
							
					fimse
					
				ate( OpcaoSubMenu = "3" )
				
				control := verdadeiro
				
				//! ====   FIM SUBMENU LAÇO DE REPETIÇÃO PARA
				
			caso "3"
			
				//! =====   INICIO SUBMENU LAÇO DE REPETIÇÃO ENQUANTO
				
				repita
				
					se control entao
					
						limpatela()
						escreval("=======================================")
						escreval("|   MENU Laço de repetição ENQUANTO   |")
						escreval("=======================================")
						escreval("| (1) Tabuada completa                |")
						escreval("| (2) Fatorial                        |")
						escreval("| (3) Somatoria 100 primeiros numeros |")
						escreval("| (0) Voltar ao menu Principal        |")
						escreval("=======================================")
						
					fimse
					
					verdadeiro := verdadeiro
					escreva("Selecione uma opcao do menu: ")
					leia(OpcaoSubMenu)
					
					escolha OpcaoSubMenu
						
						caso "0"
						
							// exit submenu
							OpcaoSubMenu := "3"
							control := falso
						
						caso "1"
						
							//! =====   INICIO Tabuada completa  
							
							x := 0
							x := 0
							
							enquanto ( x <= 10 ) faca
							
								escreval("Tabuada do ",x)
								
								enquanto ( y <= 10 ) faca
								
									result := x * y
									escreval( x, "x", y, "=", result )
									y := y + 1
								
								fimenquanto
								
								x := x + 1
								y := 0
								escreval("")
								
							fimenquanto
							
							//! =====   FIM Tabuada completa 
						
						caso "2"
						
							//! =====  INICIO Fatorial
						
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
							//! =====  FIM Fatorial
						
						caso "3"
						
							//! =====  INICIO Somatoria 100 primeiros numeros
						
							index := 0
							soma := 0
							
							enquanto ( index <= 100 ) faca
								
								soma := soma + index
								index := index + 1
							
							fimenquanto
							
							escreval("A somatória dos 100 primeiros números positivos é ",soma )

							//! =====  FIM Somatoria 100 primeiros numeros
						
						outrocaso
						
							escreval("Opção Invalida!")
							control := falso
					
					fimescolha
				
					se control entao
					
						escreval("")
						escreval("|         Selecione uma das opções                  |")
						escreval("|(1) Voltar para Submenu Laço de repetição ENQUANTO |")
						escreval("|(2) Voltar para menu principal                     |")
						escreval("|(3) Sair do programa                               |")

						repita
							
							leia(OpcaoSubMenu)
							
							escolha OpcaoSubMenu
							
								caso "1"
								
									control := verdadeiro
								
								caso "2"
									
									OpcaoSubMenu := "3"
									
								caso "3"
								
									OpcaoPrincipal := "0"
									
								outrocaso
								
									OpcaoSubMenu := "-1"
									escreval( "Opção Invalida" )
									escreva( "por favor selecione uma das opções disponível: " )
									
							fimescolha
						
						ate( (OpcaoSubMenu = "1") ou (OpcaoSubMenu = "2") ou (OpcaoSubMenu = "3") )
							
					fimse
					
				ate ( OpcaoSubMenu = "3" )
				
				control := verdadeiro
				//! ====   FIM SUBMENU LAÇO DE REPETIÇÃO ENQUANTO
				
			caso "4"
			
				//! =====   INICIO SUBMENU LAÇO DE REPETIÇÃO REPITA
				
				repita
				
					se control entao
					
						limpatela()
						escreval("=======================================")
						escreval("|    MENU Laço de repetição REPITA    |")
						escreval("=======================================")
						escreval("| (1) Tabuada completa                |")
						escreval("| (2) Fatorial                        |")
						escreval("| (3) Somatoria 100 primeiros numeros |")
						escreval("| (0) Voltar ao menu Principal        |")
						escreval("=======================================")
						
					fimse
						
					control := verdadeiro
					escreva("Selecione uma opcao do menu: ")
					leia(OpcaoSubMenu)
					
					escolha OpcaoSubMenu
						
						caso "0"
						
							// exit submenu
							OpcaoSubMenu := "3"
							control := falso
						
						caso "1"
						
							//! =====   INICIO Tabuada completa  
								
							x := 0
							x := 0
							
							repita 
							
								escreval("Tabuada do ",x)
							
								repita
								
									result := x * y
									escreval( x, "x", y, "=", result )
									y := y + 1
								
								ate ( y > 10 )
								
								x := x + 1
								y := 0
								escreval("")
							
							ate ( x > 10 )
							
							//! =====   FIM Tabuada completa 
						
						caso "2"
						
							//! =====  INICIO Fatorial
						
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
							
							//! =====  FIM Fatorial
						
						caso "3"
						
							//! =====  INICIO Somatoria 100 primeiros numeros
						
							index := 0
							soma := 0
							
							repita
							
								soma := soma + index
								index := index + 1
							
							ate( index > 100 )
							
							escreval("A somatória dos 100 primeiros números positivos é ",soma )

							//! =====  FIM Somatoria 100 primeiros numeros
						
						outrocaso
						
							escreval("Opção Invalida!")
							control := falso
					
					fimescolha
				
					se control entao
					
						escreval("")
						escreval("|         Selecione uma das opções                |")
						escreval("|(1) Voltar para Submenu Laço de repetição REPITA |")
						escreval("|(2) Voltar para menu principal                   |")
						escreval("|(3) Sair do programa                             |")
						
						repita
							
							leia(OpcaoSubMenu)
							
							escolha OpcaoSubMenu
							
								caso "1"
								
									control := verdadeiro
								
								caso "2"
									
									OpcaoSubMenu := "3"
									
								caso "3"
								
									OpcaoPrincipal := "0"
									
								outrocaso
								
									OpcaoSubMenu := "-1"
									escreval( "Opção Invalida" )
									escreva( "por favor selecione uma das opções disponível: " )
									
							fimescolha
						
						ate( (OpcaoSubMenu = "1") ou (OpcaoSubMenu = "2") ou (OpcaoSubMenu = "3") )
						
					fimse
					
				ate( OpcaoSubMenu = "3" )
				
				control := verdadeiro
				//! ====   FIM SUBMENU LAÇO DE REPETIÇÃO REPITA
				
			caso "5"

				//! =====   INICIO SUBMENU ARRAY
				
				repita
				
					se control entao
					
						limpatela()
						escreval("=======================================")
						escreval("|              MENU ARRAY             |")
						escreval("=======================================")
						escreval("| (1) Tic-Tac-Toe                     |")
						escreval("| (2) TODO                            |")
						escreval("| (3) TODO                            |")
						escreval("| (0) Voltar ao menu Principal        |")
						escreval("=======================================")
						
					fimse
						
					control := verdadeiro
					escreva("Selecione uma opcao do menu: ")
					leia(OpcaoSubMenu)
					
					escolha OpcaoSubMenu
						
						caso "0"
						
							// exit submenu
							OpcaoSubMenu := "3"
							control := falso
						
						caso "1"
						
							//! =====   INICIO Tic-Tac-Toe
							
							player := "O"
							line[1] := "A"
							line[2] := "B"
							line[3] := "C"
							tie := 0
							exit := falso
							
							para row de 1 ate 3 passo 1 faca
								
								para colunm de 1 ate 3 passo 1 faca
								
									table[row,colunm] := " "
									
								fimpara
								
							fimpara
							
							repita
							
								limpatela()
								escreval( "  1   2   3" )
								escreval( "A ", table[1,1] ," | ", table[1,2] ," | ", table[1,3] )
								escreval( " ------------" )
								escreval( "B ", table[2,1] ," | ", table[2,2] ," | ", table[2,3] )
								escreval( " ------------" )
								escreval( "C ", table[3,1] ," | ", table[3,2] ," | ", table[3,3] )
								
								repita
								
									escreval("")
									escreval("Jogador ", player )
									escreval("Digite o número da coluna que deseja marcar")
									leia( colunm )
									escreval("Digite a letra da linha que deseja marcar")
									leia( linha )
									
									para counter de 1 ate 3 passo 1 faca
									
										se linha = line[counter] entao
										
											row := counter
										
										fimse
									
									fimpara
									
									se table[row, colunm] = " " entao
									
										table[row, colunm] := player
										interrompa
									
									senao
									
										escreval("Posição já ocupada, por favor, selecione outra posição!")
									
									fimse
								
								ate falso
								
								// checar condição de vitória
								
								counter := 0
								
								// colunas
								para colunm de 1 ate 3 passo 1 faca
								
									para row de 1 ate 3 passo 1 faca
										
										se table[ row, colunm] =  player entao
										
											counter := counter + 1
										
										fimse
									
									fimpara
									
									se counter = 3 entao
									
										exit := verdadeiro
										
									fimse
									
									counter := 0
								
								fimpara
								
								counter := 0
								
								// linhas
								para row de 1 ate 3 passo 1 faca
								
									para colunm de 1 ate 3 passo 1 faca
										
										se table[ row, colunm] =  player entao
										
											counter := counter + 1
										
										fimse
									
									fimpara
									
									se counter = 3 entao
									
										exit := verdadeiro
										
									fimse
									
									counter := 0
								
								fimpara
								
								// 1 to 3 colunm - 1 to 3 diagonal
								counter := 0
								
								para row de 1 ate 3 passo 1 faca
								
									se table[ row, row] =  player entao
									
										counter := counter + 1
									
									fimse
								
								fimpara
								
								se counter = 3 entao
								
									exit := verdadeiro
									
								fimse
								
								// 3 to 1 colunm - 3 to 1 diagonal
								counter := 0
								
								para row de 1 ate 3 passo 1 faca
								
									se table[ 4 - row, row] =  player entao
									
										counter := counter + 1
									
									fimse
								
								fimpara
								
								se counter = 3 entao
								
									exit := verdadeiro
									
								fimse
								
								tie := tie + 1
								
								se nao( exit ) entao
								
									se tie >= 9 entao
								
										interrompa
								
									fimse
								
									se player = "O" entao
								
										player := "X"
									
									senao
								
										player := "O"
								
									fimse
								
								fimse
								
							ate exit

							limpatela()
							escreval( "  1   2   3" )
							escreval( "A ", table[1,1] ," | ", table[1,2] ," | ", table[1,3] )
							escreval( "-----------" )
							escreval( "B ", table[2,1] ," | ", table[2,2] ," | ", table[2,3] )
							escreval( "------------" )
							escreval( "C ", table[3,1] ," | ", table[3,2] ," | ", table[3,3] )
							
							se exit entao
							
								escreval( "Jogador ", player, " venceu " )
							
							senao
							
								escreval( "Empate" )
								
							fimse
							
							//! =====   FIM Tic-Tac-Toe
						
						caso "2"
						
							//! =====  INICIO Fatorial
						
								
							
							//! =====  FIM Fatorial
						
						caso "3"
						
							//! =====  INICIO Somatoria 100 primeiros numeros
						
							//! =====  FIM Somatoria 100 primeiros numeros
						
						outrocaso
						
							escreval("Opção Invalida!")
							control := falso
					
					fimescolha
				
					se control entao
					
						escreval("")
						escreval("|         Selecione uma das opções                |")
						escreval("|(1) Voltar para Submenu Laço de repetição REPITA |")
						escreval("|(2) Voltar para menu principal                   |")
						escreval("|(3) Sair do programa                             |")
						
						repita
							
							leia(OpcaoSubMenu)
							
							escolha OpcaoSubMenu
							
								caso "1"
								
									control := verdadeiro
								
								caso "2"
									
									OpcaoSubMenu := "3"
									
								caso "3"
								
									OpcaoPrincipal := "0"
									
								outrocaso
								
									OpcaoSubMenu := "-1"
									escreval( "Opção Invalida" )
									escreva( "por favor selecione uma das opções disponível: " )
									
							fimescolha
						
						ate( (OpcaoSubMenu = "1") ou (OpcaoSubMenu = "2") ou (OpcaoSubMenu = "3") )
						
					fimse
					
				ate( OpcaoSubMenu = "3" )
				
				control := verdadeiro
				//! ====   FIM SUBMENU ARRAY
				
			outrocaso
			
				escreval("Por favor! Escolha uma das opcoes disponives.")
				control := falso

		fimescolha
	  
	ate ( OpcaoPrincipal = "0" )
	
	escreval("Obrigado por utilizar nossos produtos!")
	escreval("Organizacoes Tabajara")
	
fimalgoritmo

	//! ===================  FIM MAIN 