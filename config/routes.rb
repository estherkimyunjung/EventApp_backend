Rails.application.routes.draw do
  resources :messages
  resources :rooms
  resources :announcements
  resources :organizations
  resources :events
  resources :users
  resources :tickets

  post "/login", to: "auth#create"
  post "/signup", to: "users#create"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  mount ActionCable.server => '/cable'
end
