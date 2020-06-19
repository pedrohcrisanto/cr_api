Rails.application.routes.draw do
  resources :customers
  resources :cart_items
  root "cart_items#index"
end
