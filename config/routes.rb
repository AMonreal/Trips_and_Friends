Rails.application.routes.draw do


root to: 'pages#home'
devise_for :users

get '/home' => 'pages#home', as: :home

get "users", to: "users#index"

get "users/new", to: "users#new"
post "users", to: "users#create"

get 'users/:id' => 'users#show', as: :user

get "users/:id/edit", to: "users#edit"
patch "users/:id", to: "users#update"

delete "users/:id", to: "users#destroy"

get '/trips' => 'trips#index', as: :trips

get '/trips/new' => 'trips#new', as: :trip
post 'trips', to: 'trips#create'

get '/trips/:id' => 'trips#show', as: :trip_show

get "trips/:id/edit", to: "trips#edit"
patch "trips/:id", to: "trips#update"

delete "trips/:id", to: "trips#destroy"


get '/activities' => 'activities#show', as: :activities
get '/friends' => 'friends#index'
get '/friends/profile/:id' => 'friends#show'

# resources :users
end


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
