require_relative '../app/conta'

describe('Saque') do
  it('Saque no caixa') do
    conta = Conta.new('Fernando')

    conta.saldo = 500
    conta.saque(100)

    expect(conta.mensagem).to eql "Saque com sucesso. Aguarde a contagem das notas!"
    expect(conta.saldo).to eql 400
  end

  it('Valor superior ao meu saldo') do
    conta = Conta.new('João')
    conta.saldo = 100

    conta.saque(200)

    expect(conta.mensagem).to eql 'Saldo insuficiente'
    expect(conta.saldo).to eql 100
  end

  it('Limite diário') do
    conta = Conta.new('Ricardo')
    conta.saldo = 1000

    conta.saque(701)

    expect(conta.mensagem).to eql 'Valor máximo para saque diário é de R$ 700'
    expect(conta.saldo).to eql 1000
  end
end
