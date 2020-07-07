Dado("que realizo uma requisição das marcas") do
    @api = HttpConnect.new.proc_marcas
    puts @api.body
    puts @api.code
end

Então("valido que a resposta da API é igual a {string}") do |res|
    expect(@api.response.code).to eql res
    puts "O retorno do código é igual a #{res}"
end