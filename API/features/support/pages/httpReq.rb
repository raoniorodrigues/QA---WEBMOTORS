class HttpConnect
  include HTTParty
  base_uri "http://desafioonline.webmotors.com.br/api/OnlineChallenge"

  def proc_marcas
    self.class.get("/Make")
  end

  def proc_modelo(id)
    self.class.get("/Model?MakeID=#{id}")
  end

  def proc_versao(id)
    self.class.get("/Version?ModelID=#{id}")
  end

  def proc_pagina(pag)
    self.class.get("/Vehicles?Page=#{pag}")
  end

end