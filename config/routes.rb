Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :cars
  get '/search', to: "cars#search", as: :search
# =======
  get '/profile', to: 'profile#show'
  get '/profile/my_cars', to: 'profile#cars'
  get '/profile/my_bookings', to: 'profile#bookings'
  resources :bookings, only: [:show, :update]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
