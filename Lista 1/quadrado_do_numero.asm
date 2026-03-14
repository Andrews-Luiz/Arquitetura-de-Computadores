# Faça um programa para ler um número inteiro e exibir o quadrado desse número
.text
main:
    addi $2, $0, 5 # lê um número inteiro
    syscall
    
    add $8, $0, $2 # armazena o número inteiro lido no registrador 8
    mul $4, $8, $8 # armazena o quadrado do número lido em 8
    
    li $2, 1 # imprime um número inteiro
    syscall
     
    li $2, 10 # encerra o programa
    syscall