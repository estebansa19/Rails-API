module Api
    class Articulos
        ENDPOINT = 'articulos'
        class << self
            def all
                api.get(ENDPOINT).body.map{|articulo| Articulo.new(articulo)}
            end
            
            def get(id)
                Articulo.new(api.get("#{ENDPOINT}/#{id}").body)
            end
            
            def post(body)
                response = api.post do |req|
                    req.url ENDPOINT
                    req.headers['Content-Type'] = 'application/json'
                    req.body = body.to_json
                end
                Articulo.new(response.body)
            end
            
            def put(id, body)
                response = api.put do |req|
                    req.url "#{ENDPOINT}/#{id}"
                    req.headers['Content-Type'] = 'application/json'
                    req.body = body.to_json
                end
                Articulo.new(response.body)
            end
            
            def delete(id)
                api.delete("#{ENDPOINT}/#{id}")
            end
            
            def api
                Connection.api
            end
        end
    end
end