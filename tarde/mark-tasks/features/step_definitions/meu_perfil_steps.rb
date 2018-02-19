Dado('que eu estou autenticado com {string} e {string}') do |email, senha|
  @login.load
  @login.logar(email, senha)
end

Quando('eu acesso o meu perfil') do
  @nav.menu_usuario.click
  @nav.meu_perfil.click
end

Quando('completo o meu cadastro com {string} e {string}') do |empresa, cargo|
  @perfil.atualiza(empresa, cargo)
end

Então('devo ver a mensagem {string} de atualização cadastral') do |mensagem|
  fomulario = find('form')
  expect(fomulario).to have_content mensagem
end
