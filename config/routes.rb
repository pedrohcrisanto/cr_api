Rails.application.routes.draw do
  resources :customers, only: [:index]
  resources :cart_items, only: [:index]
  resources :carts, only: [:index, :new]
  root "carts#index"
end
