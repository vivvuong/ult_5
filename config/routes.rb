Rails.application.routes.draw do
  # get 'products/index'
  # get 'products/show'

  resources :products, only: [:index, :show]


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
