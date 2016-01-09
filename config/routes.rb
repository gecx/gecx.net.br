Rails.application.routes.draw do
  root 'home#index'

  resources :slides, only: [:index]
  get "agents", to: "agents#index"
  get "whats",  to: "whats#index"
  get "events", to: "events#index"


  namespace :admin do
    resources :slides
      root :to => "home#index"
  end  
end
