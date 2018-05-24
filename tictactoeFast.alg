algoritmo "semnome"
var
	position: vetor[1..9] de caractere
	i, z, contador, tie : inteiro
	player : caractere
	controle: logico
inicio
	
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

	
fimalgoritmo