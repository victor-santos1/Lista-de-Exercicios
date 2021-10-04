//Faça um programa para escrever a contagem regressiva do lançamento de um foguete.
//O programa deve imprimir 10, 9, 8, …, 1, 0 e Fogo! na tela. Cada contagem deve
//ter um intervalo de 1 segundo.

import Foundation

for i in (0...10).reversed() {
    sleep(1)
    i == 0 ? print("\(i) e Fogo!") : print(i)
}
