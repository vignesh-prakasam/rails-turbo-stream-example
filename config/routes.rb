Rails.application.routes.draw do
  resources :users

  root "users#index"

  get '/lorempicsum', to: 'users#lorempicsum'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
