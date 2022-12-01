Rails.application.routes.draw do
  mount ForestLiana::Engine => '/forest'

  devise_for :users
  resources :welcome
  resources :cats
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "cats#index"
end

