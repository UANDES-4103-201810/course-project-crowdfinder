Rails.application.routes.draw do
  resources :projects
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get "/users/:id", to: "users#show"
  post "/users/create", to: "users#create"
  post "/users/update", to: "users#update"
  post "/users/destroy", to: "users#destroy"

  get "/projects/:id", to: "projects#show"
  post "/projects/create", to: "projects#create"
  post "/projects/update", to: "projects#update"
  post "/projects/destroy", to: "projects#destroy"

  get "/funders/:id", to: "funders#show"
  post "/funders/create", to: "funders#create"
  post "/funders/update", to: "funders#update"
  post "/funders/destroy", to: "funders#destroy"

  get "/categories/:id", to: "categories#show"
  post "/categories/create", to: "categories#create"
  post "/categories/update", to: "categories#update"
  post "/categories/destroy", to: "categories#destroy"

  get "/merches/:id", to: "merches#show"
  post "/merches/create", to: "merches#create"
  post "/merches/update", to: "merches#update"
  post "/merches/destroy", to: "merches#destroy"

  get "/promises/:id", to: "promises#show"
  post "/promises/create", to: "promises#create"
  post "/promises/update", to: "promises#update"
  post "/promises/destroy", to: "promises#destroy"

  get "/wishes/:id", to: "wishes#show"
  post "/wishes/create", to: "wishes#create"
  post "/wishes/update", to: "wishes#update"
  post "/wishes/destroy", to: "wishes#destroy"

  get "home/index"
  root "home#index"
end
