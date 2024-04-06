class AddressesController < ApplicationController
  def index
    response = api.address(params[:cep])
    render json: { data: response }, status: :ok
  end

  private

  def api
    ViaCep::Api.new
  end
end
