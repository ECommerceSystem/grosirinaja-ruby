Rails.application.routes.draw do
  namespace :admin do
      root to: "buyer_goods#index"

      resources :buyer_goods
      resources :goods
      resources :stocks
      resources :users
    end
    
  root :to => "homes#index"

  resources :goods, only: %i[index show]
  
  resource :session, controller: "sessions", only: %i[create]
  get "/login", to: "sessions#new", as: "login"
  get "/logout", to: "sessions#destroy"
end
