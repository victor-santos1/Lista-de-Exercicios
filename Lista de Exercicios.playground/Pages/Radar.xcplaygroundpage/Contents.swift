//Escreva uma função que recebe a velocidade do carro de um usuário.
//Caso ultrapasse 80 km/h, exiba uma mensagem dizendo que o usuário foi multado.
//Nesse caso, exiba o valor da multa, cobrando R$ 5 por km acima de 80 km/h.
//Para 90km → Você foi multado em R$ 50


func radar(velocidade: Int) {
    var valor = 0
    let velocidadeExcesso = -80

    if velocidade < 80 {
        return
    } else if velocidade > 80 {
        valor = (velocidadeExcesso + velocidade) * 5
        print("Você foi multado em R$ \(valor)")
    }
}

radar(velocidade: 90)
