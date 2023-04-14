Rails.application.routes.draw do

  resources :courier_statuses
  resources :couriers
  resources :product_orders
  resources :orders
  resources :order_statuses
  resources :products
  resources :customers
  resources :restaurants
  resources :employees
  resources :addresses
  devise_for :users
  namespace :api do
    post 'login', to: "auth#index"
  
    post 'order/:id/status', to: 'orders#set_status'
    get "restaurants", to: "restaurants#index"
    get "products", to: "products#index"
  end
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root to: "home#index"
  # Defines the root path route ("/")
  # root "articles#index"
end
