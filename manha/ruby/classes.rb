

class Pessoa
  attr_accessor :nome, :idade, :email

  def initialize(nome, idade)
    @nome = nome
    @idade = idade
  end
end

class Testador < Pessoa
  def testa
    puts @nome + ' diz achei um bug!'
  end
end

class Devesenvolvedor < Pessoa
  def coda
    puts @nome + ' criou um bug'
  end
end

joao = Testador.new('João', 18)
joao.testa

maria = Devesenvolvedor.new('Maria', 20)
maria.coda
