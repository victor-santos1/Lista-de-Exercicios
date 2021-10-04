//Escreva uma função que pergunte o salário do funcionário e calcule o valor do aumento.
//Para salários superiores a R$ 1.250,00, calcule um aumento de 10%. Para os inferiores ou iguais, de 15%.

import Foundation

func calcularSalario(salario: Double) {
    var novoSalario = salario
    if salario > 1250 {
          novoSalario += (salario * 10)/100
        print("Reajuste de 10% no salario, novo salario é R$\(novoSalario)")
    } else if salario <= 1250 {
         novoSalario += (salario * 15)/100
        print("Reajuste de 15% no salario, novo salario é R$\(novoSalario)")
    }
}

calcularSalario(salario: 1200)
