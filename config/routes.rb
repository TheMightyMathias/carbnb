Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :cars do
      resources :bookings, shallow: true
    end
  get '/search', to: "cars#search", as: :search
get '/profile', to: 'profile#show'
get '/profile/my_cars', to: 'profile#cars'
get '/profile/my_bookings', to: 'profile#bookings'
get '/profile/my_trips', to: 'profile#trips'
get '/profile/:id/edit', to: 'profile#edit', as: :edit_profile
patch '/profile/:id', to: 'profile#update'
end
