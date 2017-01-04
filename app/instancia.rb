class Instancia
  def call(env)
    request = Rack::Request.new(env)

    case request.request_method
    when 'GET'
      if env["PATH_INFO"] == '/'
        lista = Lista.new(ENV['ACCESS_KEY_ID'], ENV['SECRET_ACCESS_KEY'])

        return lista.listar()
      end
    when 'POST'
      [200, {}, ["POST!"]]
    end

    [404, {}, ["ERRO 404!"]]
  
  end
end