# Fa�a um programa que leia um n�mero entre 0 e 999 e imprima esse n�mero com 3 algarismos. Exemplo, 23 gera uma sa�da 023 e 8 gera uma sa�da 008.

.text
main: 
     li $2, 5 # aciona o servi�o 5, que l� um n�mero inteiro
     syscall 
     
     move $8, $2 # pega o conte�do do registrador 2 e move pro 8
     
     li $16, 100 
     li $17, 10
     li $18, 1
     
     div $8, $16 # pega 23 e divide por 100, gera quociente 0  e resto 23
     mflo $11 # pega o 0 que est� em lo e move pro registrador 4
     mfhi $9 # pega o que est� em hi e move pro registrador 9
     
     div $9 $17 # 3 resto, e 2 de quociente
     mflo $12
     mfhi $10
     
     div $10 $18
     mflo $13
     
     move $4, $11
     li $2, 1 # imprime o conte�do do registrador 4
     syscall
     
     move $4, $12
     li $2, 1
     syscall
     
     move $4, $13
     li $2, 1
     syscall

     li $2, 10
     syscall
     
     
     
