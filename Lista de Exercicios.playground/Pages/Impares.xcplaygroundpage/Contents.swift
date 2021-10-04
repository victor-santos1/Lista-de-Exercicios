//Escreva uma função que recebe um número e imprima todos os números ímpares de 1 até o número.

import Foundation

func impares(_ numero: Int) {
    for impar in 0...numero {
        impar%2 != 0 ? print(impar) : nil
    }
}
impares(10)


