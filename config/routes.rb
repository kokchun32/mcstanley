Rails.application.routes.draw do
  resources :bookings
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "/homepage" => "bookings#homepage", as: "homepage"
  root 'bookings#homepage'
end
