algoritmo "ordemNumerica"
var
	list: vetor[1..10] de inteiro
	listOrdenada: vetor[1..10] de inteiro
	input: caractere
	i, z, tmp, index, ammount: inteiro
	
inicio

	ammount := 0
	escreval( "Digite até 10 números a serem ordenados")
	escreval( "Ou digite um número invalido para ordenas os números já digitados")
	
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

fimalgoritmo