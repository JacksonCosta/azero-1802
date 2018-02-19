

class PerfilPage < SitePrism::Page
  element :input_empresa, 'input[name$=company]'
  element :combo_cargo, 'select[name$=job]'
  element :botao_salvar, 'button[type=submit]'

  def atualiza(empresa, cargo)
    input_empresa.set empresa
    combo_cargo.find('option', text: cargo).select_option
    botao_salvar.click
  end
end
