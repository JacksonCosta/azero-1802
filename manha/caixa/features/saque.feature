#language:pt

Funcionalidade: Saque no caixa eletronico
    Sendo um cliente correntista do banco
    Posso sacar dinheiro em caixas eletrônicos
    Para que eu possa comprar em estabelecimentos que não aceitam cartão crédito ou débito

    Contexto: Correntista
        Dado que eu sou um correntista

    Cenario: Saque no caixa
        
        E meu saldo é de R$ 500
        Quando faço um saque no valor de R$ 100
        Então vejo a mensagem "Saque com sucesso. Aguarde a contagem das notas! Ninja Bank"
        E meu saldo final será de R$ 400

    Cenario: Valor máximo permitido

        E meu saldo é de R$ 1000
        Quando faço um saque no valor de R$ 701
        Então vejo a mensagem "Valor máximo permitido para saque é de R$ 700"
        E meu saldo final será de R$ 1000

    Cenario: Saldo insuficiente

        E meu saldo é de R$ 100
        Quando faço um saque no valor de R$ 200
        Então vejo a mensagem "Saldo insuficiente"
        E meu saldo final será de R$ 100