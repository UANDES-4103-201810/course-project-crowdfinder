Rails.application.routes.draw do
  resources :merches
  devise_for :users, controllers: {:omniauth_callbacks => "callbacks"}

  resources :users do
    resources :wishes
  end
  resources :projects do
    resources :promises do
      resources :funders
    end
  end

  resources :projects do
    resources :promises do
      resources :merches
    end
  end
  resources :categories

  get "home/index"
  root "home#index"
end
