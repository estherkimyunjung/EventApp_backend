Rails.application.routes.draw do
  resources :organizations
  resources :events
  resources :users

  # get "/signup", to: "users#create"
  # get "/login", to: "auth#create"
  post "/tickets", to: 'tickets#create'
  post "/login", to: "auth#create"
  post "/signup", to: "users#create"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
