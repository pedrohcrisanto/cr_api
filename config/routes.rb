Rails.application.routes.draw do
  resources :customers
  resources :cart_items
  resources :carts
  root "carts#index"
end
