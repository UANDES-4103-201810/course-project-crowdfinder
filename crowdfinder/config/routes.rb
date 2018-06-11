Rails.application.routes.draw do

  devise_for :users
  resources :users
  resources :projects do
    resources :promises do
      resources :funders
    end
  end
  resources :categories
  resources :merchs
  resources :wishes

  get "home/index"
  root "home#index"
end
