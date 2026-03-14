# Faça um programa para ler um número e imprimir o dobro desse número

.text
main: addi $2, $0, 5 # Aciona o serviço 5, que sever para ler um número
      syscall         # ler um numero 
      
      add $8, $0, $2 # armazena o número lido no registrador 8
      add $8, $8, $8 # calcula o dobro do número
      add $4, $0, $8 # armazena o dobro do número no registrador 4
      
      addi $2, $0, 1 # aciona o serviço de imprimir um numero
      syscall # imprime o numero
      
      addi $2, $0, 10 # aciona o serviço de encerrar o programa
      syscall # encerra o programa
      