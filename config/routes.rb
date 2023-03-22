Rails.application.routes.draw do
  resources :restaurant_pizzas, only: [:create, :index, :destroy]
  resources :restaurants, only: [:index, :show, :destroy, :create]
  resources :pizzas, only: [:index, :create]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
