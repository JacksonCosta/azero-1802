
class Conta
  attr_accessor :nome, :saldo, :mensagem

  def saca(valor)
    if valor > @saldo
      @mensagem = 'Saldo insuficiente'
    elsif valor > 700
      @mensagem = 'Valor máximo permitido para saque é de R$ 700'
    else
      @saldo -= valor
      @mensagem = 'Saque com sucesso. Aguarde a contagem das notas! Ninja Bank'
    end
  end
end
