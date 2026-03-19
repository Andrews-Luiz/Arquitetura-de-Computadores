.text
main:
     li $2, 12 # l� um caractere, ao acionar o comando 12 de leitura de caractere
     syscall
     
     move $8, $2
     
     li $2, 11 # syscall pra imprimir o caractere lido
     li $4, 10 # código Ascii, para /n, quebra de linha
     syscall
     
     li $16, 32 # pega a constante 32 e coloca no registrador 16
     
     sub $4, $8, $16 # faz a subtração do caractere minusculo, cuja sua subtração por 32 será seu caractere maisculo e aloca a resposta no registrador 4
     
     li $2, 11 # imprime o conteudo do registrador 4
     syscall
     
     li $2, 10
     syscall
     
     
     
