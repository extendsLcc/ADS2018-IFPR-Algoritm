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
	num := getInt()
	
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
	num := getInt()
	
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
	
	escreval("A somatória dos 100 primeiros números positivos é ",soma )

fimprocedimento

	// ===================  FIM SUBMENU REPITA
	
	// ===================  INICIO SUBMENU SELECAO

procedimento maior2Numeros
var
	a, b: inteiro
inicio
	
	escreva( "Digite um número: " )
	a := getInt()
	escreva( "Digite outro número: " )
	b := getInt()
	
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
	
	escreva( "Digite o 1º número: " )
	leia(a)
	escreva( "Digite o 2º número: " )
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
    escreval( "Digite o número da cor desejada" )
	cor := getInt()
	
	escolha cor
	
		caso 1
			
			escreval( "Cor verde escolhida" )
			
		caso 2
			
			escreval( "Cor vermelha escolhida" )
			
		caso 3
			
			escreval( "Cor azul escolhida" )
	
		outrocaso
			
			escreval( "Opção Inválida" )
			
	fimescolha

fimprocedimento