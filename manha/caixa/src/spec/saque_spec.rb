
require_relative '../conta'


describe('Saque') do
  it('saque no caixa') do
    c = Conta.new

    c.saldo = 500
    c.saca(100)

    expect(c.mensagem).to eql "Saque com sucesso. Aguarde a contagem das notas! Ninja Bank"
    expect(c.saldo).to eql 400
  end

  it('Valor máximo permitido') do
    c = Conta.new

    c.saldo = 1000
    c.saca(701)

    expect(c.mensagem).to eql "Valor máximo permitido para saque é de R$ 700"
    expect(c.saldo).to eql 1000
  end

  it('saldo insuficiente') do
    c = Conta.new

    c.saldo = 100
    c.saca(200)

    expect(c.mensagem).to eql "Saldo insuficiente"
    expect(c.saldo).to eql 100
  end
end
