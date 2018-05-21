algoritmo "semnome"
var
	cpf: vetor[1..11] de inteiro
	cpfChar: caractere
    i, position, valid: inteiro
inicio

	escreval( "Digite seu CPF" )
	leia( cpfChar )
	
	para i de 1 ate 11 passo 1 faca
	
		cpf[i] := Caracpnum( Copia( cpfChar, i, 1 ) )
	
	fimpara
	
	valid := 0
	
	para position de 0 ate 9 passo 1 faca
	
		para i de 1 ate 11 passo 1 faca
		
			se cpf[i] = position entao
			
				valid := valid + 1
			
			fimse
		
		fimpara
		
		se valid >= 11 entao
		
			position := 12
			interrompa
		
		fimse
	
		valid := 0
		
	fimpara
	
	//position := 10 se não entrar na condição de ter 11 caracteres iguais, o para position vai resultar em 10
	
	enquanto position > 11 faca
	
		valid := 0
	
		para i de 1 ate position - 1 passo 1 faca
		
			valid := valid + cpf[i] * ( position + 1 - i)
		
		fimpara
		
		valid := 11 - ( valid % 11 )
		
		se valid = 10 entao
		
			valid := 0
			
		fimse

		se valid = cpf[position] entao

			position := position + 1
			
			se position > 11 entao
			
				escreval( "CPF Válido!" )
			
			fimse

		senao

			escreval( "CPF Inválido" )
			interrompa

		fimse
		
	fimenquanto
	
fimalgoritmo