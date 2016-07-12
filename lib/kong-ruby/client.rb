module Kong
  class Client
    include Kong::Utils
    attr_reader :url

    def initialize(url = 'http://123.31.11.86:8001') # 'http://localhost:8001'
      @url = url

      resources :node, :api
    end
  end

end
