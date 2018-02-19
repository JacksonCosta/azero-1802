require_relative '../../src/conta'

Dado('que eu sou um correntista') do
  @c = Conta.new
end

Dado('meu saldo é de R$ {int}') do |saldo_inicial|
  @c.saldo = saldo_inicial
end

Quando('faço um saque no valor de R$ {int}') do |valor_saque|
  @c.saca(valor_saque)
end

Então('vejo a mensagem {string}') do |mensagem|
  expect(@c.mensagem).to eql mensagem
end

Então('meu saldo final será de R$ {int}') do |saldo_final|
  expect(@c.saldo).to eql saldo_final
end
