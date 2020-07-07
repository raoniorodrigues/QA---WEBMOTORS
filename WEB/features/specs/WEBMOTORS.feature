#language:pt

    @login

    Funcionalidade: Realizar uma pesquisa aonde devemos consultar a Marca, Modelo e Versão da página de resultados do site www.webmotors.com.br

        @buscaprincipal
        Cenário: Acessar a busca principal com todos os veículos disponíveis

        Dado acesso a página principal
        Quando clico em Buscar Ofertas
        Então devo validar o total de veículos disponíveis para venda no Brasil

        @buscaestoque
        Cenário: Realizar busca de quantidade de veículos na pesquisa. Ela deve ser igual ao valor de carros mostrados na tela.

        Dado que realizo a busca através da página principal da webmotors
        Quando e realizo uma busca através do filtro Marca do Carca do Carro, Modelo e Versão
        Então devo se está disponível o "HONDA CITY" disponível