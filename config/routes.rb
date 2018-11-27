Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :cars
# <<<<<<< searchbarcontinued
#   get 'cars/search', to: "cars#search"
# =======
  get '/profile', to: 'profile#show'
  get '/profile/my_cars', to: 'profile#cars'
  get '/profile/my_bookings', to: 'profile#bookings'
  get '/profile/my_trips', to: 'profile#trips'
  resources :bookings, only: [:show, :update, :destroy]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
