Rails.application.routes.draw do
  root "home#index"
  get 'home/list_products', to: 'home#list_products'
  get 'admins/index', to: 'admins#index', as: :admins
  resources :tiendas
  resources :clientes
  resources :productos
  resources :usuarios


  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.

  # Defines the root path route ("/")
  # root "posts#index"
end
