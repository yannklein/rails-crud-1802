Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"

  # INDEX: http://localhost:3000/restaurants
  get "restaurants", to: "restaurants#index", as: "restaurants"
  # NEW/CREATE: http://localhost:3000/restaurants/new
  get "restaurants/new", to: "restaurants#new", as: "new_restaurant"
  post "restaurants", to: "restaurants#create"
  # SHOW: http://localhost:3000/restaurants/3
  get "restaurants/:id", to: "restaurants#show", as: "restaurant"
  # EDIT/UPDATE: http://localhost:3000/restaurants/3/edit
  get "restaurants/:id/edit", to: "restaurants#edit", as: "edit_restaurant"
  patch "restaurants/:id", to: "restaurants#update"
  # DELETE: http://localhost:3000/restaurants/3
  delete "restaurants/:id", to: "restaurants#destroy"
end
