Algoritmo "TrabalhoAvaliativo"
// Autor : Lucas da Cruz Cunha
// Data : 23/05/2018
Var
	OpcaoPrincipal, OpcaoSubMenu: caractere
	index, 	a, b, c , cor, 	x, y , result,	contador, fatorial, num ,	soma : inteiro
	control: logico

	//Vars tic-tac-toe
	position: vetor[1..9] de caractere
	i, z, tie : inteiro // contador
	player : caractere
	controle: logico
	
	//Vars NumSorting
	list: vetor[1..10] de inteiro
	listOrdenada: vetor[1..10] de inteiro
	input: caractere
	//i, z, index,
	tmp, ammount: inteiro
	
	//Vars CPFcheck
	cpf: vetor[1..11] de inteiro
	cpfChar: caractere
    //i, position, 
	posit, valid: inteiro
	
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
						escreval("| (2) Ordenar números                 |")
						escreval("| (3) Validar CPF                     |")
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
							
							player := "X"
							tie:= 0
							
							para i de 1 ate 9 passo 1 faca
							
								 position[i] := Numpcarac(i)
							
							fimpara
							
							repita
							
								se player = "X" entao
								
									player := "O"
									
								senao
								
									player := "X"
								
								fimse
							
								limpatela()
								escreval( position[7] ," | ", position[8] ," | ", position[9] )
								escreval( "-----------" )
								escreval( position[4] ," | ", position[5] ," | ", position[6] )
								escreval( "------------" )
								escreval( position[1] ," | ", position[2] ," | ", position[3] )
							
								i := 0
								controle := falso
								repita
									
									escreval( "Jogador ",player )
									escreval( "Digite a posição que deseja selcionar" )
									leia( i )
									
									se ((i > 0) e (i < 10))  entao
									
										se ( (position[i] = "X" ) ou (position[i] = "O") ) entao
										
											escreval( "Casa Ocupada!" )
										
										senao
										
											position[i] := player
											controle := verdadeiro
										
										fimse
										
									senao
										
										escreval( "Posição Invalida!" );
									
									fimse
									
								ate controle
								
								controle := falso
								contador := 0
								
								// condição de vitoria
								
								//{1,2,3}
								//{4,5,6}
								//{7,8,9}
								para i de 1 ate 7 passo 3 faca
								
									para z de 0 ate 2 passo 1 faca 
									
										se position[i+z] = player entao
										
											contador := contador + 1
											
										fimse
										
									fimpara
									
									se contador = 3 entao
									
										controle := verdadeiro
										
									senao
									
										contador := 0
									
									fimse
									
								fimpara
								
								//{1,4,7}
								//{2,5,8}
								//{3,6,9}
								para i de 1 ate 3 passo 1 faca
								
									para z de i ate 6+i passo 3 faca 
									
										se position[z] = player entao
										
											contador := contador + 1
											
										fimse
										
									fimpara

									se contador = 3 entao
									
										controle := verdadeiro
										
									senao
									
										contador := 0
									
									fimse
									
								fimpara
								
								//{1,5,9}
								//{3,5,7}
								para z de 1 ate 3 passo 2 faca
								
									para i de z ate 10-z passo 5-z faca
									
										se position[i] = player entao
										
											contador := contador + 1
											
										fimse
										
									fimpara
								
									se contador = 3 entao
									
										controle := verdadeiro
										
									senao
									
										contador := 0
									
									fimse
								
								fimpara
								
								se controle entao

									limpatela()
									escreval( position[7] ," | ", position[8] ," | ", position[9] )
									escreval( "-----------" )
									escreval( position[4] ," | ", position[5] ," | ", position[6] )
									escreval( "------------" )
									escreval( position[1] ," | ", position[2] ," | ", position[3] )
									escreval( "Jogador ",player," Venceu")

								fimse

								//fimcondição de vitoria
								
								// Empate
								tie := tie + 1
								
								se ((tie = 9) e nao(controle)) entao
								
									controle := verdadeiro
									escreval( "Empate!" )
								
								fimse
							
							ate controle
							
							//! =====   FIM Tic-Tac-Toe
						
						caso "2"
						
							//! =====  INICIO NumberSorting
						
							ammount := 0
							escreval( "Digite até 10 números a serem ordenados")
							escreval( "Ou digite um número invalido para ordenar os números já digitados")

							para i de 1 ate 10 passo 1 faca

								escreval( "Digite o ",i,"º número: " )
								leia( input )
								
								// detectar se é numero valido
								para z de 1 ate Compr( input ) passo 1 faca
								
									se Asc( input ) = 45 entao
									
										z := 2
									
									fimse
								
									tmp := Asc( Copia( input, z, 1 ) )
									
									se ( tmp < 48 ) ou ( tmp > 57 ) entao
									
										// Valor não numerico
										i := 11
									
									fimse
								
								fimpara
								
								se i <> 11 entao
								
									list[i] := Caracpnum( input )
									ammount := ammount + 1
									
								senao
								
									interrompa
								
								fimse

							fimpara

							se ammount > 1 entao

								para i de 1 ate ammount passo 1 faca
								
									listOrdenada[i] := list[i]
								
								fimpara

								para i de 1 ate ammount passo 1 faca
								
									index := i
								
									para z de i+1 ate ammount passo 1 faca
									
										se listOrdenada[index] > listOrdenada[z] entao
										
											index := z
										
										fimse
									
									fimpara
									
									tmp := listOrdenada[i]
									listOrdenada[i] := listOrdenada[index]
									listOrdenada[index] := tmp
								
								fimpara

							fimse

							escreval( "Números digitados: " )

							para i de 1 ate ammount passo 1 faca

								escreva( list[i],", " )

							fimpara

							escreval()
							escreval( "Números digitados em Ordem: " )

							para i de 1 ate ammount passo 1 faca

								escreva( listOrdenada[i],", " )

							fimpara
							
							
							//! =====  FIM NumberSorting
						
						caso "3"
						
							//! =====  INICIO CPFcheck

							escreval( "Digite seu CPF" )
							leia( cpfChar )
							
							para i de 1 ate 11 passo 1 faca
							
								cpf[i] := Caracpnum( Copia( cpfChar, i, 1 ) )
							
							fimpara
							
							// verificar se todos os numeros são iguais
							valid := 0
							posit := 1
							
							para i de 2 ate 11 passo 1 faca
							
								se cpf[i] <> cpf[1] entao
								
									posit := 10
									interrompa
									
								senao
								
									posit := posit + 1
									
								fimse
							
							fimpara
							
							enquanto posit <= 11 faca
							
								valid := 0
							
								para i de 1 ate posit - 1 passo 1 faca
								
									valid := valid + cpf[i] * ( posit + 1 - i)
								
								fimpara
								
								valid := 11 - ( valid % 11 )
								
								se valid = 10 entao
								
									valid := 0
									
								fimse

								se valid = cpf[posit] entao

									posit := posit + 1
									
									se posit > 11 entao
									
										escreval( "CPF Válido!" )
									
									fimse

								senao

									escreval( "CPF Inválido" )
									interrompa

								fimse
								
							fimenquanto
							
							//! =====  FIM CPFcheck
						
						outrocaso
						
							escreval("Opção Invalida!")
							control := falso
					
					fimescolha
				
					se control entao
					
						escreval("")
						escreval("|         Selecione uma das opções                |")
						escreval("|(1) Voltar para Submenu Array                    |")
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