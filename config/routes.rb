Rails.application.routes.draw do
  resources :bookings
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "/homepage" => "bookings#homepage", as: "homepage"
  root 'bookings#homepage'
  get "/bookings_today" => "bookings#bookings_today", as: "bookings_today"

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

  get '/signup' => 'users#new'
  post '/users' => 'users#create'

  get "/users/index" => 'users#index'
end
