Rails.application.routes.draw do
  get 'exchanges/index'
  get 'cryptos/index'
  root 'home#index'
  get 'convert', to: 'exchanges#convert'
  get 'convert_crypto', to: 'cryptos#convert_crypto'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
