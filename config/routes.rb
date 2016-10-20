Rails.application.routes.draw do
  resources :transacaos
  resources :centro_custos
  resources :impostos
  resources :fornecedors
  resources :clientes
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'home#index'
end
