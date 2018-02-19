
require_relative '../../app/conta'

Dado("que eu sou um correntista") do
    @conta = Conta.new('João')
end
  
Dado("meu saldo é de R$ {int}") do |saldo_incial|
    @conta.saldo = saldo_incial
end
  
Quando("eu solicito um saque no valor de R$ {int}") do |valor_saque|
    @conta.saque(valor_saque)
end
  
Então("devo ver a mensagem {string}") do |mensagem|
    expect(@conta.mensagem).to eql mensagem
end
  
Então("meu saldo final será de R$ {int}") do |saldo_final|  
    expect(@conta.saldo).to eql saldo_final
end