Rails.application.routes.draw do
  namespace :admin do
      resources :buyer_goods
      resources :goods
      resources :stocks
      resources :users

      root to: "buyer_goods#index"
    end
  # root :to => "application#index"
  
  # get "sejarah" => "histories#index"
end
