Dado("que realize a consulta a versão do veículo passando o id {string}") do |id|
    @api = HttpConnect.new.proc_modelo(id)
    puts @api.body
    puts @api.code
end                                                                                                                                                                                                           
