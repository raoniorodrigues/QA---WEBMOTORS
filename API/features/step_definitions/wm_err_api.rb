# Cenário de Modelo Incorreto

Dado("que eu pesquise um carros da marca honda informando id inválido {string}") do |id|
  @api = HttpConnect.new.proc_modelo(id)
  puts @api.code
end

Então("a resposta para a busca dos modelos será {string}") do |res|
  expect(@api.response.code).to eql res
  puts "O retorno do código é #{res}"
end


# Cenário de Modelo Incorreto

Dado("que é informado a versão do veículo passando parametro id inválido {string}") do |id|
  @api = HttpConnect.new.proc_versao(id)
  puts @api.code
end

# Cenário de Modelo Incorreto

Dado("que é informado uma requisição com um pagina inválida: {string}") do |id|
  @api = HttpConnect.new.proc_pagina(id)
  puts @api.code
end

