Rails.application.routes.draw do
  namespace :admin do
      resources :buyer_goods
      resources :goods
      resources :stocks
      resources :users

      root to: "buyer_goods#index"
    end
  root :to => "application#index"
  
  resource :session, controller: "sessions", only: %i[create]
  get "/login", to: "sessions#new", as: "login"
  get "/logout", to: "sessions#destroy"
end
