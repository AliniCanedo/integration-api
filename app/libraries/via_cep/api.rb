module ViaCep
  class Api
    def address(cep)
      response = Faraday.get("https://viacep.com.br/ws/#{cep}/json", nil, headers)
      JSON.parse(response.body)
    end

    private

    def headers
      {
        'Content-Type' => 'application/json'
      }
    end
  end
end