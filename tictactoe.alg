algoritmo "tictactoe"
var
	table: vetor [1..3,1..3] de caractere
	line: vetor[1..3] de caractere
	player, linha: caractere
	row, colunm: inteiro
	counter, tie: inteiro
	exit: logico
inicio
	
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
		escreval( "-----------" )
		escreval( "B ", table[2,1] ," | ", table[2,2] ," | ", table[2,3] )
		escreval( "------------" )
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
			
			se table[row, colunm] <> "X" e table[row, colunm] <> "O" entao
			
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
	escreval( " -----------" )
	escreval( "B ", table[2,1] ," | ", table[2,2] ," | ", table[2,3] )
	escreval( " -----------" )
	escreval( "C ", table[3,1] ," | ", table[3,2] ," | ", table[3,3] )
	
	se exit entao
	
		escreval( "Jogador ", player, " venceu " )
	
	senao
	
		escreval( "Empate" )
		
	fimse
	
fimalgoritmo