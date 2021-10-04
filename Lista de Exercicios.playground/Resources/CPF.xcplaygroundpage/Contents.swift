import UIKit

func validarCPF(_ cpf: String) -> Bool {
    var cpfLimpo = cpf.components(separatedBy: CharacterSet.decimalDigits.inverted).joined()
    let verificador = cpfLimpo //variavel de apoio
    cpfLimpo.removeLast(2)
    let primeiroNumero = cpfLimpo.first
    let validoParaCalculo = !cpfLimpo.allSatisfy( { $0 == primeiroNumero }) // recebe false se todos os elementos forem iguais
    var validoCPF = cpfLimpo

    if validoParaCalculo {
        calculoDigito(validoCPF) //calcula os digitos
        calculoDigito(validoCPF)
        
        func calculoDigito(_ cpf: String) {
            var index = cpf.count+1
            let digito = cpf.map { numero -> Int in
                let n = Int(String(numero))! * index; index += -1
                return n}.reduce(0) { $0 + $1}
            validoCPF += String(validadorDigito(digito))
        }
        
        func validadorDigito(_ soma: Int) -> Int {
            var digito = 0
            let soma = soma
            if soma%11 < 2 {
                digito = 0
            } else if soma%11 >= 2 {
                digito = 11 - soma%11
            }
            return digito
        }
    }
    
    func verificarAutenticidade(_ cpf: String) -> Bool  {
        cpf == validoCPF ? true : false
    }
  return verificarAutenticidade(verificador)
}

var valido = validarCPF("568.602.290-98")

