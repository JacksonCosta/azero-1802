Dado('que eu tenho uma tarefa com os atributos:') do |table|
  @tarefa = table.rows_hash
end

Dado("eu quero taguear esta tarefa com:") do |table|
  @tags = table.hashes
end

Quando('faço o cadastro desta tarefa') do
  @tasks.botao_novo.click
  @tasks.adicionar.nova(@tarefa, @tags)
end

Então('devo ver este cadastro com status {string}') do |_string|
  pending # Write code here that turns the phrase above into concrete actions
end
