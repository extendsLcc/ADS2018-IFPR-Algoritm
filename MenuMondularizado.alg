Algoritmo "TrabalhoAvaliativo"
// Versao 3 - Menu Principal
/*

	Trabalho da disciplina algoritimo e estrutura de dads somente por e-mail
	marcelo.davi@ifpr.edu.br
	Data maxima da entrega 11/09
	// tirar parametros

*/

Var
	OpcaoPrincipal: caractere
	RodaPrograma: caractere
	menu: vetor [1..10] de caractere
	index, SEPARATORSIZE : inteiro
	
	
	// ====================  INICIO FUN��ES UTIL

funcao lerNum(): inteiro
var
	input : caractere 
	index : inteiro
	char : caractere
inicio
	
	repita
	
		leia( input )
		
		
	
	ate( falso )

fimfuncao
	
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

	// ===================  FIM FUN��ES UTIL
	
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
	escreval( "Fatorial de qual n�mero?" )
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
	
	escreval("A somat�ria dos 100 primeiros n�meros positivos � ",soma )

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
			escreval("Por favor! Escolha uma das op��es dispon�veis.")
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
	imprimeMenu( 3, "      MENU La�o de repeti��o PARA       " )
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
	escreval( "Fatorial de qual n�mero?" )
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
	
	escreval("A somat�ria dos 100 primeiros n�meros positivos � ",soma )

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
			escreval("Por favor! Escolha uma das op��es dispon�veis.")
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
	imprimeMenu( 3, "   MENU La�o de repeti��o ENQUANTO      " )
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
	escreval( "Fatorial de qual n�mero?" )
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
	
	escreval("A somat�ria dos 100 primeiros n�meros positivos � ",soma )

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
			escreval("Por favor! Escolha uma das op��es dispon�veis.")
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
	imprimeMenu( 3, "   MENU La�o de repeti��o Repita        " )
	operaMenuRepita()

fimprocedimento

	// ===================  FIM SUBMENU REPITA
	
	// ===================  INICIO SUBMENU SELECAO

procedimento maior2Numeros
var
	a, b: inteiro
inicio
	
	escreva( "Digite um n�mero: " )
	leia(a)
	escreva( "Digite outro n�mero: " )
	leia(b)
	
	se( a > b ) entao
	
		escreval( "O maior n�mero �: " , a )
		
	senao
	
		se( a < b ) entao
		
			escreval( "O Maior n�mero �: ", b )
			
		senao
		
			escreval( "Os dois n�meros digitados s�o iguais" )
			
		fimse
		
	fimse

fimprocedimento

procedimento somarCS
var
	a, b, c: inteiro
inicio
	
	escreva( "Digite o 1� n�mero: " )
	leia(a)
	escreva( "Digite o 2� n�mero: " )
	leia(b)
	c := a + b
	
	se( c > 10 ) entao
	
		escreval( "A soma dos n�meros �: " , c )
		
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
			
			escreval( "Op��o Invalida" )
			
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
	imprimeMenu( 3, "      MENU Estruturas de Sele��o        " )
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
	menu[2] := "Exemplos La�o Para               "
	menu[3] := "Exemplos La�o Enquanto           "
	menu[4] := "Exemplos La�o Repita             "
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
