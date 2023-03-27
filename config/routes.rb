Rails.application.routes.draw do
  resources :hero, only: [:index, :show]
  resources :hero_power, only: [:create]
  resources :power, only: [:index, :show, :update]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
