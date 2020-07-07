Dado("que realize a consulta a versão do veículo passando o id {string} no endpoint") do |id|
  @api = HttpConnect.new.proc_versao(id)
  puts @api.code
  puts @api.body
end

Então("valido que a resposta da API para esta busca é igual a {string}") do |res|
  expect(@api.response.code).to eql res
  puts "O retorno do código é igual a #{res}"
end