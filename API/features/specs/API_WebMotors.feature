#language: pt
#enconding: utf-8

@apis
Funcionalidade: Garantir que serão validadas através pela API marcas, modelos e versões através do verbo POST.

@marcas_api
Cenário: Realizar consulta através do ID das marcas
    Dado que realizo uma requisição das marcas
    Então valido que a resposta da API é igual a '200'

@modelo_api
Cenário: Realizar consulta de modelos através de seus id´s
    Dado que realize a consulta a versão do veículo passando o id "2"
    Então valido que a resposta da API é igual a '200'

@versao_api
Cenário: Realizar consulta através a versão do meu veículo
    Dado que realize a consulta a versão do veículo passando o id "2" no endpoint
    Então valido que a resposta da API é igual a '200'

@pagina_api
Cenário: Realizar consulta através veículos pelas paginas do site
    Dado que faça um requisição para a pagina "1" do site da webmotors
    Então valido que a resposta da API é igual a '200'

@err_modelo
Cenário: Realizar consulta de modelos com parâmetros inválidos
    Dado que eu pesquise um carros da marca honda informando id inválido 'M'
    Então valido que a resposta da API é igual a '400'

@err_versao
Cenário: Realizar consulta de versão de veículo com parâmetros inválidos
    Dado que é informado a versão do veículo passando parametro id inválido 'V'
    Então valido que a resposta da API é igual a '400'

@err_pagina
Cenário: Realizar consulta de paginado com parâmetros inválidos
    Dado que é informado uma requisição com um pagina inválida: "P"
    Então valido que a resposta da API é igual a '400'