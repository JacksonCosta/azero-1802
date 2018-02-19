

Before do
  visit 'https://marktasks.herokuapp.com/api/reset/fernando@qaninja.io?clean=full'
end

Before do
  @login = LoginPage.new
  @tarefas = TarefasPage.new
  @perfil = PerfilPage.new
  @nav = Navbar.new
end

After('@logout') do
  @nav.bye_bye
end
