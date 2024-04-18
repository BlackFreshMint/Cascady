Rails.application.routes.draw do

  get "about", to:"about#index"

  get "shop", to: "shop#index", as: :shop

  get "password", to: "passwords#edit", as: :edit_password
  patch "password", to: "password#update"

  get "sign_up", to: "registrations#new"
  post "sign_up", to: "registrations#create"

  get "sign_in", to: "sessions#new"
  post "sign_in", to: "sessions#create"

  delete "logout", to: "sessions#destroy"

  root to: "main#index"

  resources :products

  resources :carts do
    resources :cart_items, shallow: true
  end

end
