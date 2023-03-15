Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  get "/accounts", to: "accounts#index"
  post "/accounts", to: "accounts#create"
  get "/accounts/:id", to: "accounts#read"
  put "/accounts/:id", to: "accounts#update"
  delete "/accounts/:id", to: "accounts#destroy"
end
