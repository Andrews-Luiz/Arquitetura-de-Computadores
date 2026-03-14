# ler um numero entre 0 e 999 e fazer a soma entre os algarismos desse numero, por exemplo, a soma entre os algarismos de 358 é 16, por 3 + 5 + 8 = 16

.text
main: 
     li $2, 5 # lê o número digitado pelo usuário
     syscall
     
     move $8, $2 # move o número lido para o registrador 8
     
     li $17, 100 # atribuí o valor 100 ao registrador 17
     li $18, 10 # atribui o valor 10 ao registrador 18
     li $19, 1 # atribui o valor 1 ao registrador 19
     
     div $8, $17 
     mflo $9 
     mfhi $12
     
     div $12, $18 
     mflo $10 
     mfhi $13
     
     div $13, $19 
     mflo $11 
     
     add $8, $9, $10 # faz a soma dos quocientes das divisões anteriores
     add $4, $8, $11
     
     li $2, 1 # imorime o valor no registrador 4, que é justamente a soma entre os quocientes
     syscall
     
     li $2, 10 # encerra o programa
     syscall
    