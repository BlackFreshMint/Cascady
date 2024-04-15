Rails.application.routes.draw do
  get 'admins/index', to: 'admins#index', as: :admins

  root "home#index"
  get 'home/registro', to: 'home#registro', as: :registro
  post 'home/create', to: 'home#create_registro'
  get 'home/list_products', to: 'home#list_products', as: :list_products
  
  get 'home/pre_login', to: 'home#pre_login', as: :pre_login
  get 'home/product_modal', to: 'home#product_modal', as: :product_modal
  post 'home/product_modal', to: 'home#orden', as: :orden
  
  get 'sessions/new', to: 'sessions#new', as: :login
  post 'sessions/create', to: 'sessions#create'
  
  resources :clientes do
    resources :ubicacions
  end
  
  resources :recursos
  resources :tiendas
  resources :productos
  resources :usuarios


  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.

  # Defines the root path route ("/")
  # root "posts#index"
end
