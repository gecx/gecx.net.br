Rails.application.routes.draw do
  root 'home#index'

  resources :slides, only: [:index]
  get "agents", to: "agents#index"
  get "whats",  to: "whats#index"
  get "events", to: "events#index"

end
