

Before do
  visit 'https://marktasks.herokuapp.com/api/reset/fernando@qaninja.io?clean=full'
end

Before do
  @login = LoginPage.new
  @tarefas = TarefasPage.new
  @perfil = PerfilPage.new
  @nav = Navbar.new

  page.current_window.resize_to(1280, 800)
end

Before('@auth') do
  @login.load
  @login.logar('eu@papito.io', '123456')
end

After('@logout') do
  @nav.bye_bye
end

After do |scenario|
  # if scenario.failed?
  nome_cenario = scenario.name.tr(' ', '_').downcase!
  screenshot = "logs/shots/#{nome_cenario}.png"
  page.save_screenshot(screenshot)
  embed(screenshot, 'image/png', 'Clique aqui para ver a evidência!')
  # end
end
