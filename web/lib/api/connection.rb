require 'faraday'
require 'faraday_middleware'

class Connection
    URL = 'https://railsapi-estebansa.c9users.io'
    def self.api
        Faraday.new(url: URL) do |faraday|
            faraday.response :logger
            faraday.adapter Faraday.default_adapter
            faraday.response :json
        end
    end
end
