Rails.application.routes.draw do
  namespace :admin do
      root to: "buyer_goods#index"

      resources :buyer_goods
      resources :seller_goods
      resources :goods
      resources :stocks
      resources :users
    end
    
  root :to => "homes#index"

  resources :goods, only: %i[index show]
  resources :payments, only: %i[index]

  resources :merchants, only: %i[index]
  
  resources :registers, only: %i[new create]
  
  resource :session, controller: "sessions", only: %i[create]
  get "/login", to: "sessions#new", as: "login"
  get "/logout", to: "sessions#destroy"

  get "/contacts", to: "contacts#index"
end
