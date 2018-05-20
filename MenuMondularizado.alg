Algoritmo "TrabalhoAvaliativo"
// Versao 1 - Menu Principal
Var
	OpcaoPrincipal: caractere
	RodaPrograma: caractere
	menu: vetor [1..10] de caractere
	index, SEPARATORSIZE : inteiro
	
	
	// ====================  INICIO FUNÇÕES UTIL
	
funcao repeatChar( char: caractere; ammount: inteiro ) : caractere
var
	i : inteiro
	txt: caractere
inicio

	txt := ""

	para i de 1 ate ammount passo 1 faca
		
		txt := txt + char
		
	fimpara
	
	retorne txt

fimfuncao

procedimento separator
var
inicio

	escreval( repeatChar( "=", SEPARATORSIZE ) )

fimprocedimento

procedimento imprimeMenu( size: inteiro; title: caractere )
var
inicio

	limpatela()
	separator()
	escreval( "|", title, "|" )
	separator()

	para index de 1 ate size passo 1 faca
		
		escreval( "| (",index," ) ", menu[index], "|" )
		
	fimpara
	
	escreval( "| ( 0 ) ", menu[index] , "|")
	separator()
	escreva("Selecione uma opcao do menu: ")

fimprocedimento

	// ===================  FIM FUNÇÕES UTIL
	
	// ===================  INICIO SUBMENU PARA

procedimento tabuadaPara
var
	x, y, result: inteiro
inicio
	
	para x de 0 ate 10 passo 1 faca
		
		para y de 0 ate 10 passo 1 faca
		
			result := x * y
			escreval( x, "x", y, "=", result )
			
		fimpara
		
	fimpara

fimprocedimento

procedimento fatorialPara
var
	contador, fatorial, num: inteiro
inicio
	
	contador := 1
	fatorial := 1
	escreval( "Fatorial de qual número?" )
	leia( num )
	
	para contador de 1 ate num passo 1 faca
	
		fatorial := fatorial * contador
		
	fimpara
	
	escreval("O fatorial de ",num," equivale a ", fatorial )

fimprocedimento

procedimento soma100Para
var
	ind, soma: inteiro
inicio
	
	ind := 1
	soma := 0
	
	para ind de 0 ate 100 passo 1 faca
	
		soma := soma + ind
	
	fimpara
	
	escreval("A somatória dos 100 primeiros números positivos é ",soma )

fimprocedimento

procedimento operaMenuPara
var
inicio

	leia( OpcaoPrincipal )
	escolha OpcaoPrincipal
		caso "0"
			mostraMenuPrincipal()
			
		caso "1"
			tabuadaPara()
		
		caso "2"
			fatorialPara()
			
		caso "3"
			soma100Para()
		
		outrocaso
			escreval("Por favor! Escolha uma das opções disponíveis.")
			operaMenuPara()
		
	fimescolha

fimprocedimento

procedimento mostraMenuPara
var
inicio

	menu[1] := "Tabuada completa                 "
	menu[2] := "Fatorial                         "
	menu[3] := "Somatoria 100 primeiros numeros  "
	menu[4] := "Voltar ao menu Principal         "
	imprimeMenu( 3, "      MENU Laço de repetição PARA       " )
	operaMenuPara()

fimprocedimento

	// ===================  FIM SUBMENU PARA
	
	// ===================  INICIO SUBMENU ENQUANTO

procedimento tabuadaEnquanto
var
	x, y, result: inteiro
inicio
	
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
	
fimprocedimento

procedimento fatorialEnquanto
var
	contador, fatorial, num: inteiro
inicio
	
	contador := 1
	fatorial := 1
	escreval( "Fatorial de qual número?" )
	leia( num )
	
	enquanto ( contador <= num ) faca
		
		fatorial := fatorial * contador
		contador := contador + 1

	fimenquanto
		
	escreval("O fatorial de ",num," equivale a ", fatorial )

fimprocedimento

procedimento soma100Enquanto
var
	ind, soma: inteiro
inicio
	
	ind := 0
	soma := 0
	
	enquanto ( ind <= 100 ) faca
		
		soma := soma + ind
		ind := ind + 1
	
	fimenquanto
	
	escreval("A somatória dos 100 primeiros números positivos é ",soma )

fimprocedimento

procedimento operaMenuEnquanto
var
inicio

	leia( OpcaoPrincipal )
	escolha OpcaoPrincipal
		caso "0"
			mostraMenuPrincipal()
			
		caso "1"
			tabuadaEnquanto()
		
		caso "2"
			fatorialEnquanto()
			
		caso "3"
			soma100Enquanto()
		
		outrocaso
			escreval("Por favor! Escolha uma das opções disponíveis.")
			operaMenuEnquanto()
		
	fimescolha

fimprocedimento

procedimento mostraMenuEnquanto
var
inicio

	menu[1] := "Tabuada completa                 "
	menu[2] := "Fatorial                         "
	menu[3] := "Somatoria 100 primeiros numeros  "
	menu[4] := "Voltar ao menu Principal         "
	imprimeMenu( 3, "   MENU Laço de repetição ENQUANTO      " )
	operaMenuEnquanto()

fimprocedimento

	// ===================  FIM SUBMENU ENQUANTO

	
	// ===================  INICIO SUBMENU REPITA

procedimento tabuadaRepita
var
	x, y, result: inteiro
inicio
	
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
	
fimprocedimento

procedimento fatorialRepita
var
	contador, fatorial, num: inteiro
inicio
	
	contador := 1
	fatorial := 1
	escreval( "Fatorial de qual número?" )
	leia( num )
	
	se( num > 1 ) entao
	
		repita
		
			fatorial := fatorial * contador
			contador := contador + 1
		
		ate( contador > num )
		
	fimse
	
	escreval("O fatorial de ",num," equivale a ", fatorial )

fimprocedimento

procedimento soma100Repita
var
	ind, soma: inteiro
inicio
	
	ind := 0
	soma := 0
	
	repita
	
		soma := soma + ind
		ind := ind + 1
	
	ate( ind > 100 )
	
	escreval("A somatória dos 100 primeiros números positivos é ",soma )

fimprocedimento

procedimento operaMenuRepita
var
inicio

	leia( OpcaoPrincipal )
	
	escolha OpcaoPrincipal
		caso "0"
			mostraMenuPrincipal()
			
		caso "1"
			tabuadaRepita()
		
		caso "2"
			fatorialRepita()
			
		caso "3"
			soma100Repita()
		
		outrocaso
			escreval("Por favor! Escolha uma das opções disponíveis.")
			operaMenuRepita()
		
	fimescolha

fimprocedimento

procedimento mostraMenuRepita
var
inicio

	menu[1] := "Tabuada completa                 "
	menu[2] := "Fatorial                         "
	menu[3] := "Somatoria 100 primeiros numeros  "
	menu[4] := "Voltar ao menu Principal         "
	imprimeMenu( 3, "   MENU Laço de repetição Repita        " )
	operaMenuRepita()

fimprocedimento

	// ===================  FIM SUBMENU REPITA
	
	// ===================  INICIO SUBMENU SELECAO

procedimento maior2Numeros
var
	a, b: inteiro
inicio
	
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

fimprocedimento

procedimento somarCS
var
	a, b, c: inteiro
inicio
	
	escreva( "Digite o 1ª número: " )
	leia(a)
	escreva( "Digite o 2ª número: " )
	leia(b)
	c := a + b
	
	se( c > 10 ) entao
	
		escreval( "A soma dos números é: " , c )
		
	fimse

fimprocedimento

procedimento escolhaCores
var
	cor : inteiro
inicio

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

fimprocedimento

procedimento operaMenuSelecao
var
inicio

	leia( OpcaoPrincipal )
	
	escolha OpcaoPrincipal
		caso "0"
			mostraMenuPrincipal()
			
		caso "1"
			
			maior2Numeros()
		
		caso "2"
		
			somarCS()
			
		caso "3"
		
			escolhaCores()
		
		outrocaso
			escreval("Por favor! Escolha uma das opcoes disponives.")
			operaMenuSelecao()
		
	fimescolha

fimprocedimento

procedimento mostraMenuSelecao
var
inicio

	menu[1] := "Maior_2_Numeros_v2               "
	menu[2] := "SomarCS                          "
	menu[3] := "Menu_cores                       "
	menu[4] := "Voltar ao menu Principal         "
	imprimeMenu( 3, "      MENU Estruturas de Seleção        " )
	operaMenuSelecao()

fimprocedimento

	// ===================  FIM SUBMENUP SELECAO

	// ===================  INICIO MENU PRINCIPAL

procedimento operaMenuPrincipal
var
inicio

	leia( OpcaoPrincipal )
	escolha OpcaoPrincipal
		caso "0"
			RodaPrograma := "N"
		
		caso "1"
			mostraMenuSelecao()
			
		caso "2"
			mostraMenuPara()
			
		caso "3"
		
			mostraMenuEnquanto()
			
		caso "4"
		
			mostraMenuRepita()
			
		caso "5"
			//mostra menu proximo assunto
		
		outrocaso
			escreval("Por favor! Escolha uma das opcoes disponives.")
		
	fimescolha


fimprocedimento

procedimento mostraMenuPrincipal
var
inicio

	menu[1] := "Exemplos Estruturas de Selecao   "
	menu[2] := "Exemplos Laço Para               "
	menu[3] := "Exemplos Laço Enquanto           "
	menu[4] := "Exemplos Laço Repita             "
	menu[5] := "Proximo Assunto                  "
	menu[6] := "Sair do Programa                 "
	imprimeMenu( 5, "       MENU TRABALHO AVALIATIVO         " )
	operaMenuPrincipal()

fimprocedimento


	// ===================  FIM MENU PRINCIPAL

	
	// ===================  INICIO MAIN

inicio
	
	SEPARATORSIZE := 42
	OpcaoPrincipal := "9"
	RodaPrograma := "S"
	
	enquanto (RodaPrograma = "S") ou (RodaPrograma = "s") faca
	
		mostraMenuPrincipal()
		
		se (RodaPrograma = "S") ou (RodaPrograma = "s") entao

			escreva("Deseja continuar utilizando o programa? (S/N): ")
			leia(RodaPrograma)

		fimse
	
	fimenquanto
	
	escreval("Obrigado por utilizar nossos produtos!")
	escreval("Organizacoes Tabajara")
	
fimalgoritmo

	// ===================  FIM MAIN
