class CryptosController < ApplicationController
  def index
  end
 
  # def convert
  #   value = ExchangeService.new(params[:source_currency], params[:target_currency], params[:amount]).perform
  #   render json: {"value": value}
  # end

  def index
  end

  def convert_crypto
    value = ExchangeService.new(params[:source_currency], params[:target_currency], params[:amount]).perform_crypto
    render json: {"value": value}
  end 	

end
