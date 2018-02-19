

class Pessoa
  attr_accessor :nome, :email, :idade

  def initialize(nome, email, idade)
    @nome = nome
    @email = email
    @idade = idade
  end

  def mostra_idade
    puts @idade
  end
end

class Testador < Pessoa
  def testar
    puts "#{@nome}, achou um bug! Enviar um email para #{@email}"
  end
end

class Devesenvolvedor < Pessoa
  def codifica
    puts "#{@nome}, criou um bug! Enviar um email para #{@email}"
  end
end

t = Testador.new('Fernando', 'fernando@qaninja.io', 34)
t.testar
t.mostra_idade

d = Devesenvolvedor.new('João', 'joao@qaninja.io', 25)
d.codifica
d.mostra_idade
