# Faça um programa que imprima cada número em uma linha diferente, exemplo 3219 imprime 0219, cada um em uma linha

.text
main: 
     li $2, 5 # aciona o serviço de ler um número
     syscall
     
     move $8, $2
     
     li $16, 1000
     li $17, 100
     li $18, 10
     li $19, 1
     
     div $8, $16 # 3219, dividido por 1000, me dará resto 219 e quociente 3
     mflo $12
     mfhi $9
     
     div $9, $17 # 219 dividido por 100, resto 19 e quociente 2
     mflo $13
     mfhi $10
     
     div $10, $18 # 19 divido por 10, resto 9 e quociente 1
     mflo $14
     mfhi $11
     
     div $11, $19 # 9 dividido por 1, resto 0 e quociente 9
     mflo $15
     
     move $4, $15 # move o último número pro registrador 4
     li $2, 1 # aciona o serviço de imprimir inteiro
     syscall
     li $2, 11 # 1. processador, o próximo syscall será pra imprimir um único caractere
     li $4, 10 # carrega o caractere que será impresso, 10 é Enter na tabela Ascii
     syscall
     
     move $4, $14
     li $2, 1
     syscall
     li $2, 11 # 2.
     li $4, 10
     syscall
     
     move $4, $13
     li $2, 1
     syscall
     li $2, 11 # 3.
     li $4, 10
     syscall
     
     move $4, $12
     li $2, 1
     syscall
     li $2, 11 # 4.
     li $4, 10
     syscall
     
     li $2, 10
     syscall
     # encerra o programa
     
     
   
     
    
     
     
     
     
     
     