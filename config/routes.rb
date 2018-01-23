Rails.application.routes.draw do


root to: 'pages#home'
devise_for :users

get '/home' => 'pages#home', as: :home
get 'users/:id' => 'users#show', as: :user
get '/trips' => 'trips#index', as: :trips
get '/trips/create' => 'trips#create', as: :trip
get '/trips/show/:id' => 'trips#show'
get '/activities' => 'activities#show', as: :activities


end


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


