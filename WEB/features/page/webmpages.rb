class Page_WebMotors
    include Capybara::DSL
    
    #Título com quantidade total de veículos na pesquisa principal
    def titleSearch
        find(".title-search").text
    end
    

    #Botão Ver Ofertas
    def verOfertas
        find('a.Button.Button--red-home').click
    end
    
    #URL do Estoque específico
    def url 
        'carros/estoque/?IdRevendedor=3834764&TipoVeiculo=carros&anunciante=concessionária%7Cloja'
    end
    
    
    #Botão de Marcas específicas
    def btnMarca
        find("a[title=honda]").click
    end
    
    #Lista de modelos específicos
    def btnModelo
        find('.Filters__line--gray').click
        find(:link, "CITY").click
        sleep 2
    end

    #Lista de Vesões específicas
    def btnVersao
        find('.Filters__line--gray').click
        find(:xpath, '//*[@id="root"]/main/div[1]/div[2]/div/div[2]/div/div[4]/a').click
        sleep 2
    end


    #Estouque da loja
    def totalvericulos
        all('.ContainerCardVehicle').count
    end

    def resveiculo
        find('div.ContainerCardVehicle').text
    end
end