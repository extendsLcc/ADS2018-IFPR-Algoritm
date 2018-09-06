Algoritmo "TrabalhoMenuModularizado"
// Autor : Lucas da Cruz Cunha
// Autor : Alex da Mata
// Data : 29/08/2018
Var
    // Variavel utilizada para controlar o fim da execução do programa. Como existe a possibilidade de sair do programa
    // de varios pontos ( Menu principal, sub menu e menu de retorno ), é necessario que esta variavel seje global.
    exitMenu: logico
    // Vetor utilizado para "parametrizar" texto das opções dos menus. 
	menu: vetor [1..10] de caractere
    // Variavel utilizada para identificar a quantidade de opções "parametrizada" pela variavel 'menu'
    menuSize: inteiro

    // Dada a restrição do trabalho de não utilizar funções e procedimentos que utilizem passagem de parametros
    // as variáveis abaixo foram criadas para contornar essa limitação sendo usadas como substitutas de parametros
    // de suas respectivas funções sinalizadas no comentario anterior as mesmas.
        // subistitutos parametros
        // FormatMenuTxt
            whichString: caractere
            targetSize: inteiro
        // charLoop()
            charAmmount: inteiro
            whichChar: caractere

//! INIT UTIL FUNCTIONS

    // Requisita input do usuário até que o mesmo digite um valor númerico e retorna o valor inteiro do número digitado.
funcao getInt():inteiro
Var
inicio
    
    retorne Int( getReal() )

fimfuncao
    

    // Requisita input do usuário até que o mesmo digite um valor númerico.
    // #Lógica: Continuar requisitando input do usuário até que o mesmo digite uma String com 1 ou mais
    // caracteres, aonde o número ASCII de todos os caracteres da String esteja entre 48 e 57 ( 0-9 ) com
    // exceção do primeiro caractere que pode ser o simbolo "-" para representar número negativo e apenas
    // uma ocorrencia do simbolo "." em toda a String para representar números decimais.
funcao getReal():real
Var
    start, index, charAsc: inteiro
    input: caractere
    control, decimal: logico
inicio

    repita

        leia( input )
        
        se Compr( input ) > 0 entao
        
            decimal := falso
            control := verdadeiro
            
            // Considerando número negativo
            se Asc( input ) = 45 entao
            
                start := 2
                
            senao
            
                start := 1
            
            fimse

            para index de start ate Compr( input ) passo 1 faca

                charAsc := Asc( Copia( input, index, 1 ) )

                // Considerando casa decimal
                se charAsc = 46 entao
                
                    se nao( decimal ) entao
                    
                        decimal := verdadeiro
                        charAsc := 50 // Gambi, para não cair no proximo if
                        
                    //senao
                    
                        // Mais de uma virgula, número invalido, deixa cair no priximo if naturalmente
                    
                    fimse
                
                fimse
                
                // Detectando caracteres não númericos
                se( charAsc < 48 ) ou ( charAsc > 57 ) entao

                    escreval( "O valor digitado não é um número válido, por favor digite um valor númerico válido: " )
                    control := falso
                    interrompa

                fimse

            fimpara
            
        senao
        
            escreval("Nenhum valor foi digitado, por favor digite um número válido: ")
        
        fimse

    ate( control )
    
    retorne Caracpnum( input )

fimfuncao

    // Imprime a mensagem de requisição de input do usuario, requisita e retorna a opção selecionada pelo usuário.
funcao getSelectedOption(): inteiro
Var
inicio

    escreval("Digite o número da opção do menu que deseja executar: ")
    retorne getInt()

fimfuncao

    // Imprime Mensagem de erro padrão sobre opção inválida do menu 
procedimento errorOpt
Var
inicio

    escreval( "Opção Inválida, por favor selecione uma das opções listadas no menu" )

fimprocedimento

    // Retorna a String @whichChar repetida por @charAmmount vezes.
    // EX:   whichChar := "$" charAmmount := 5  charLoop() -> "$$$$$" 
funcao charLoop(): caractere
Var
    i: inteiro
    returnString : caractere
inicio

    returnString := ""

    para i de 1 ate charAmmount passo 1 faca

        returnString := returnString + whichChar

    fimpara

    retorne returnString

fimfuncao

    // Preenche o lado direito da @whichString por espaços (" ") de maneira que o tamanho total de @whichString + espaços seja @targetSize
    // e retorna @whichString + espaços * @targetSize envoltos de "|".
funcao formatMenuTxt(): caractere
Var
inicio

    whichChar := " "
    charAmmount := targetSize - Compr( whichString )

    retorne "|" + whichString + charLoop() + "|"

fimfuncao

    // Imprime o caractere "=" por @targetSize vezes, envolto de caracteres "|".
procedimento separator
Var
inicio

    whichChar := "="
    charAmmount := targetSize
    whichString := charLoop()
    escreval( formatMenuTxt() )

fimprocedimento

    // Limpa a tela do console e chama procedimento de imprimir texto do Menu.
procedimento printMenuCls
var
inicio

    limpaTela()
    printMenu()

fimprocedimento

    // Formatar e imprimir menu baseado nos valores do array @menu e @menuSize
    // Primeiro indice @menu sempre sera considerado o titulo do menu e sera centralizado acordo com a maior String
    // encontrada entre os valores em @menu de 1 até @menuSize.
    // Pega os valores a partir do segundo indice do vetor @menu até o indice @menuSize e enumera-os como opções
    // do menu. Além de formata-los de maneira que as bordas do menu fiquem simétricas de acordo com a maior String
    // encontrada entre as opções.
    // A ultima opção sempre sera considerado como alternativa de retorno/saida, sendo númerada com "(0)"
procedimento printMenu
Var
    i , size : inteiro
    center : real
    formatedMenu: vetor [1..10] de caractere
inicio

    // menu[1] = titulo

    // Coletar dados dos itens a serem imprimidos para formata-los corretamente

    size := Compr( menu[1] )

    para i de 2 ate menuSize passo 1 faca

        se i = menuSize entao

            formatedMenu[i] := " (0) " + menu[i]

        senao
            
            formatedMenu[i] := " ("+ Numpcarac(i - 1) + ") " + menu[i]

        fimse
        
        se Compr( formatedMenu[i] ) > size entao

            size := Compr( formatedMenu[i] )

        fimse

    fimpara

    size := size + 4 // minimo 2 espaços envolta do titulo centralizado
    
    // Centralizando titulo do menu

    center := ( size - Compr( menu[1] ) ) / 2

    whichChar := " "
    charAmmount := Int( center )
    formatedMenu[1] := charLoop() + menu[1]


    // Correção para centralizar titulo com tamanho impar
    // Caso for impar, @center possuira um valor real
    se Int( center ) <> center entao

        center := center + 1

    fimse

    whichChar := " "
    charAmmount := Int( center )
    formatedMenu[1] := formatedMenu[1] + charLoop()

    // fim da Centralização do titulo

    // Impresão dos itens do menu

    targetSize := size
    separator()
    whichString := formatedMenu[1]
    escreval( formatMenuTxt() )
    separator()

    para i de 2 ate menuSize passo 1 faca

        whichString := formatedMenu[i]
        escreval( formatMenuTxt() )

    fimpara
    
    separator()

fimprocedimento

//! END UTIL FUNCTIONS

//! INIT MENU MANAGEMENT

    // Gerencia o controle de impressão e seleção do menu principal.
procedimento showMainMenu
Var
    // @showMenu: utilizado no controle da impressão do texto do menu em caso de seleção de opção inválida.
    showMenu: logico
    selectedOption: inteiro
inicio

    // Definir @showMenu como verdadeiro, pois sempre que o procedimento for chamado, o texto do menu sera imprimido.
    showMenu := verdadeiro

    repita

        se showMenu entao

            printMainMenu()

        fimse

        showMenu := verdadeiro
        selectedOption := getSelectedOption()

        escolha selectedOption

            caso 0

                // Fechar
                exitMenu := verdadeiro

            caso 1

                showMenuSelecao()

            caso 2

                showMenuPara()

            caso 3

                showMenuEnquanto()

            caso 4

                showMenuRepita()

            caso 5

                showMenuVetor()

            outrocaso

                showMenu := falso
                errorOpt()

        fimescolha

    ate(exitMenu)

fimprocedimento

    // Define Texto a ser imprimido do menu principal e imprime o mesmo formatado.
procedimento printMainMenu
Var
inicio

    menu[1] := "Menu Principal"
    menu[2] := "Estruturas de Selecao"
    menu[3] := "Laço Para"
    menu[4] := "Laço Enquanto"
    menu[5] := "Laço Repita"
    menu[6] := "Array/Vetor e Matriz"
    menu[7] := "Sair do Programa"
    menuSize := 7
    printMenuCls()

fimprocedimento

    // Gerencia o controle de impressão e seleção do menu de seleção.
procedimento showMenuSelecao
Var
    // @showMenu: utilizado no controle da impressão do texto do menu e na chamada do menu de retorno
    // em caso de seleção de opção inválida do menu atual ou seleção da opção de retorno de menu.
    showMenu: logico
    selectedOption: inteiro
inicio

    showMenu := verdadeiro

    repita

        se showMenu entao

            printMenuSelecao()

        fimse

        // caso @showMenu estiver falso no caso de o usuário estiver digitado uma alternativa inválida
        // na repetição anterior, definir como verdadeiro para que o menu de retorno seje mostrado após 
        // a seleção de uma alternativa válida.
        showMenu := verdadeiro
        selectedOption := getSelectedOption()

        escolha selectedOption

            caso 0

                // Voltar
                // Define @showMenu como falso para evitar a operação do menu de retorno quando o usuário
                // seleciona a opção de retornar ao menu principal.
                showMenu := falso

            caso 1

                maior2Numeros()

            caso 2

                parOuImpar()

            caso 3

                escolhaCores()

            outrocaso
            
                // Define @showMenu como falso para evitar a operação do menu de retorno quando o usuário
                // seleciona uma opção inválida. 
                showMenu := falso
                errorOpt()

        fimescolha

        // Caso o usuário não tenha escolhido a opção de retorno/saida ou uma opção inválida, mostrar menu de retorno.
        se showMenu entao

            selectedOption := returnMenu()

        fimse

        // Caso a opção 0 for selecionada, retorne ao menu anterior sem imprimir o menu de retorno
        // Caso a opção selecionada no menu de retorno (Leia $returnMenu ) for 2, retorne ao menu anterior.
    ate( selectedOption = 0 ) ou ( selectedOption = 2 )

fimprocedimento

procedimento printMenuSelecao
Var
inicio

    menu[1] := "Exemplos de Estrutura de Seleção"
    menu[2] := "Maior_2_Numeros_v2"
    menu[3] := "Par ou Impar"
    menu[4] := "Menu_cores"
    menu[5] := "Voltar ao menu Principal"
    menuSize := 5
    printMenuCls()

fimprocedimento

procedimento showMenuPara
Var
    showMenu: logico
    selectedOption: inteiro
inicio

    showMenu := verdadeiro

    repita

        se showMenu entao

            printMenuPara()

        fimse

        showMenu := verdadeiro
        selectedOption := getSelectedOption()

        escolha selectedOption

            caso 0

                // Voltar
                showMenu := falso

            caso 1

                tabuadaPara()
                
            caso 2

                fatorialPara()

            caso 3

                soma100Para()

            outrocaso

                showMenu := falso
                errorOpt()

        fimescolha

        se showMenu entao

            selectedOption := returnMenu()

        fimse

    ate( selectedOption = 0 ) ou ( selectedOption = 2)

fimprocedimento

procedimento printMenuPara
Var
inicio

    menu[1] := "MENU Laço de repetição PARA"
    menu[2] := "Tabuada completa"
    menu[3] := "Fatorial"
    menu[4] := "Somatoria 100 primeiros numeros"
    menu[5] := "Voltar ao menu Principal"
    menuSize := 5
    printMenuCls()

fimprocedimento

procedimento showMenuEnquanto
Var
    showMenu: logico
    selectedOption: inteiro
inicio

    showMenu := verdadeiro

    repita

        se showMenu entao

            printMenuEnquanto()

        fimse

        showMenu := verdadeiro
        selectedOption := getSelectedOption()

        escolha selectedOption

            caso 0

                // Voltar
                showMenu := falso

            caso 1

                tabuadaEnquanto()
                
            caso 2

                fatorialEnquanto()

            caso 3

                soma100Enquanto()

            outrocaso

                showMenu := falso
                errorOpt()

        fimescolha

        se showMenu entao

            selectedOption := returnMenu()

        fimse

    ate( selectedOption = 0 ) ou ( selectedOption = 2)

fimprocedimento

procedimento printMenuEnquanto
Var
inicio

    menu[1] := "MENU Laço de repetição ENQUANTO"
    menu[2] := "Tabuada completa"
    menu[3] := "Fatorial"
    menu[4] := "Somatoria 100 primeiros numeros"
    menu[5] := "Voltar ao menu Principal"
    menuSize := 5
    printMenuCls()

fimprocedimento

procedimento showMenuRepita
Var
    showMenu: logico
    selectedOption: inteiro
inicio

    showMenu := verdadeiro

    repita

        se showMenu entao

            printMenuRepita()

        fimse

        showMenu := verdadeiro
        selectedOption := getSelectedOption()

        escolha selectedOption

            caso 0

                // Voltar
                showMenu := falso

            caso 1

                tabuadaRepita()
                
            caso 2

                fatorialRepita()

            caso 3

                soma100Repita()

            outrocaso

                showMenu := falso
                errorOpt()

        fimescolha

        se showMenu entao

            selectedOption := returnMenu()

        fimse

    ate( selectedOption = 0 ) ou ( selectedOption = 2)

fimprocedimento

procedimento printMenuRepita
Var
inicio

    menu[1] := "MENU Laço de repetição ENQUANTO"
    menu[2] := "Tabuada completa"
    menu[3] := "Fatorial"
    menu[4] := "Somatoria 100 primeiros numeros"
    menu[5] := "Voltar ao menu Principal"
    menuSize := 5
    printMenuCls()

fimprocedimento

procedimento showMenuVetor
Var
    showMenu: logico
    selectedOption: inteiro
inicio

    showMenu := verdadeiro

    repita

        se showMenu entao

            printMenuVetor()

        fimse

        showMenu := verdadeiro
        selectedOption := getSelectedOption()

        escolha selectedOption

            caso 0

                // Voltar
                showMenu := falso

            caso 1

                digitoAgencia()
                
            caso 2

                validaCPF()

            caso 3

                ticTacToe()

            outrocaso

                showMenu := falso
                errorOpt()

        fimescolha

        se showMenu entao

            selectedOption := returnMenu()

        fimse

    ate( selectedOption = 0 ) ou ( selectedOption = 2)

fimprocedimento

procedimento printMenuVetor
Var
inicio

    menu[1] := "MENU Vetor/Matriz"
    menu[2] := "Digito Agencia"
    menu[3] := "Validar CPF"
    menu[4] := "Jogo da Velha"
    menu[5] := "Voltar ao menu Principal"
    menuSize := 5
    printMenuCls()

fimprocedimento

    // Mostra menu de opções de retorno e retorna a alternativa selecionada
funcao returnMenu(): inteiro
Var
    selectedOpt: inteiro
inicio

    selectedOpt := 0

    menu[1] := "Selecione uma das opções"
    menu[2] := "Voltar para Submenu Anterior"
    menu[3] := "Voltar para menu principal"
    menu[4] := "Sair do programa"
    menuSize := 4
    printMenu()

    repita

        selectedOpt := getSelectedOption()

        escolha selectedOpt

            caso 0

                exitMenu := verdadeiro

            // Caso 1 e caso 2 são tratados no loop do submenu, sendo o caso 1 apenas continua 
            // o fluxo naturalmente da impressão e controle do submenu, e o caso 2 sai do menu secundario
            // dada sua condição de repetição.
            //caso 1
            //caso 2
            outrocaso

                errorOpt()

        fimescolha

    // Repete até que uma das 3 alternativas seja selecionada
    ate( selectedOpt >= 0 ) e ( selectedOpt <= 2 )

    retorne selectedOpt

fimfuncao

//! END MENU MANAGEMENT

//! INIT MENU FUNCTIONS

    //! ESTRUTURAS DE SELEÇÃO
    
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
            
                escreval( "Os dois número digitados são iguais" )
                
            fimse
            
        fimse

    fimprocedimento

    procedimento parOuImpar
    var
        numb: inteiro
    inicio
        
        escreva( "Digite um número: " )
        numb := getInt()
        
        se( numb % 2 = 0 ) entao
        
            escreval( "O número digitado é par" )

        senao

            escreval("O número digitado é impar")
            
        fimse

    fimprocedimento

    procedimento escolhaCores
    var
        cor : inteiro
    inicio

        escreval( " ( 1 ) Verde" )
        escreval( " ( 2 ) Vermelho" )
        escreval( " ( 3 ) Azul" )
        cor := getSelectedOption
        
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
    
    //! PARA
    
    procedimento tabuadaPara
    var
        x, y, result: inteiro
    inicio

        para x de 0 ate 10 passo 1 faca

            para y de 0 ate 10 passo 1 faca

                result := x * y
                escreval( x, " x", y, " =", result )

            fimpara
            
            escreval()

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
    
    //! ENQUANTO
    procedimento tabuadaEnquanto
    var
        x, y, result: inteiro
    inicio

        x := 0
        y := 0

        enquanto ( x <= 10 ) faca

            enquanto ( y <= 10 ) faca

                result := x * y
                escreval( x, " x", y, " =", result )
                y := y + 1

            fimenquanto

            x := x + 1
            y := 0
            escreval()

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
    
    //! REPITA
    procedimento tabuadaRepita
    var
        x, y, result: inteiro
    inicio

        x := 0
        y := 0

        repita

            repita

                result := x * y
                escreval( x, " x", y, " =", result )
                y := y + 1

            ate ( y > 10 )

            x := x + 1
            y := 0
            escreval()

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
    
    //! VETOR/MATRIZ/ARRAY
    
    procedimento digitoAgencia
    var
        a, soma, digito: inteiro
        agencia: vetor[1..5] de inteiro
        digitoAgencia: caractere
    inicio
        
        soma := 0
        digito := 0
        
        escreval("Digite o código da agencia (5 dígitos): ")
        leia( digitoAgencia )

        se Compr( digitoAgencia ) = 5 entao

            para a de 1 ate 5 passo 1 faca

                agencia[a] := Caracpnum( Copia( digitoAgencia, a, 1 ) )

            fimpara

            para a de 1 ate 4 passo 1 faca

                soma:= soma + (agencia[a]*(5 + a))

            fimpara
            
            digito := soma mod 11

            se (digito = 10) entao

                digito:= 0

            fimse

            se (digito = agencia[5]) entao

                escreval("Código da agencia correto!")

            senao 

                escreval("Código da agencia invalido!")

            fimse

        senao

            escreval( "Código inválido, deve ter exatamente 5 digitos" )

        fimse
        
	fimprocedimento
   
    procedimento validaCPF
    var
	cpf: vetor[1..11] de inteiro
	cpfChar: caractere
    i, position, valid: inteiro
    inicio

        escreval( "Digite seu CPF (Apenas os 11 números): " )
        leia( cpfChar )
        
        se ( Compr( cpfChar ) = 11 ) entao
            
            para i de 1 ate 11 passo 1 faca
            
                cpf[i] := Caracpnum( Copia( cpfChar, i, 1 ) )
            
            fimpara
            
            // verificar se todos os numeros são iguais
            valid := 0
            position := 2
            
            para i de 2 ate 11 passo 1 faca
            
                se cpf[i] <> cpf[1] entao
                
                    position := 10
                    interrompa
                    
                senao
                
                    position := position + 1
                    
                fimse
            
            fimpara
            
            se position = 12 entao
            
                escreval("CPF inválido")
            
            fimse
            
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
            
        senao
        
            escreval( "CPF inválido, deve possuir exatamente 11 números" )
        
        fimse
        
    fimprocedimento

    procedimento ticTacToe
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
                i := getInt()
                
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

    fimprocedimento

//! END MENU FUNCTIONS
	
//! INIT MAIN

inicio
	
    exitMenu := falso
	
	repita

        showMainMenu()
	  
	ate ( exitMenu )
	
	escreval("Obrigado por utilizar nossos produtos!")
	escreval("Organizacoes Tabajara")
	
fimalgoritmo

//! END MAIN 
