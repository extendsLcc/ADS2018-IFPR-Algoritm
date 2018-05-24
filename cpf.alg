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
	
	// verificar se todos os numeros são iguais
	valid := 0
	position := 1
	
	para i de 2 ate 11 passo 1 faca
	
		se cpf[i] <> cpf[1] entao
		
			position := 10
			interrompa
			
		senao
		
			position := position + 1
			
		fimse
	
	fimpara
	
	enquanto position <= 11 faca
	
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