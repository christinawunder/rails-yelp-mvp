Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # get 'restaurants', to: 'restaurants#index', as: :restaurants
  # get 'restaurants/new', to: 'restaurants#new', as: :new_restaurants
  # post 'restaurants', to: 'restaurants#create'
  # get 'restaurant/:id', to: 'restaurant#show', as: :restaurant
  resources :restaurants, only: [:index, :new, :create, :show] do
    resources :reviews, only: [:new, :create]
  end
end
