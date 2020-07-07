Dado("que faça um requisição para a pagina {string} do site da webmotors") do |pag|
  @api = HttpConnect.new.proc_pagina(pag)
  puts @api.code
  puts @api.body
end