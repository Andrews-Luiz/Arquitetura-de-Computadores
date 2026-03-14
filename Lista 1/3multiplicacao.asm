# Faça um programa para imprimir dois números inteiros e imprimir a multiplicação entre eles

.text
main:
     li $2, 5 # aciona o serviço para ler um número inteiro
     syscall
     
     move $8, $2 # move o conteúdo de 2 para 8
     
     li $2, 5 # aciona novamente o serviço para ler um número inteiro
     syscall
     
     move $9, $2 # move o conteúdo de 2 para 9
     
     mul $4, $8, $9
     
     li $2, 1
     syscall
     
     li $2, 10
     syscall