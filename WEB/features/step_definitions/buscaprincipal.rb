require "pry"

#Pesquisa principal

Dado("acesso a página principal") do
    visit ''
    # binding.pry
end
  
Quando("clico em Buscar Ofertas") do 
    @page = Page_WebMotors.new
    @page.verOfertas

end
  
Então("devo validar o total de veículos disponíveis para venda no Brasil") do
    @page = Page_WebMotors.new
    expect(page).to have_selector("div.FoundCars", visible: true)
    sleep 10
end






#Pesquisa do Estoque
Dado("que realizo a busca através da página principal da webmotors") do
    @page = Page_WebMotors.new
    visit "#{@page.url}"
    # binding.pry    
end
  
Quando("e realizo uma busca através do filtro Marca do Carca do Carro, Modelo e Versão") do
    @page = Page_WebMotors.new
    @page.btnMarca
    @page.btnModelo
    @page.btnVersao
end



Então("devo se está disponível o {string} disponível") do |hondacity|
    @page = Page_WebMotors.new
    expect(@page.resveiculo).to have_content hondacity
    p "O TOTAL DE VEÍCULOS COM A MARCA E MODELOS SELECIONADOS É #{@page.totalvericulos}"
    sleep 10
  end