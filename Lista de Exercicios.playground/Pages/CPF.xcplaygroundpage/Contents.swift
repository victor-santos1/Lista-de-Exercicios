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
            let somaParaDigito = cpf.map { numero -> Int in
                let n = Int(String(numero))! * index; index += -1
                return n}.reduce(0) { $0 + $1}
            validoCPF += String(validadorDigito(somaParaDigito))
        }
        
        func validadorDigito(_ soma: Int) -> Int {
            var digito = soma%11
                digito = digito < 2 ? 0 : 11 - soma%11
            return digito
        }
    }
    
    func verificarAutenticidade(_ cpf: String) -> Bool  {
        cpf == validoCPF ? true : false
    }
    
  return verificarAutenticidade(verificador)
}

var valido = validarCPF("45904136804")

