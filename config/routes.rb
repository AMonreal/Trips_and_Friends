Rails.application.routes.draw do


root to: 'pages#home'
devise_for :users

get '/home' => 'pages#home', as: :home
get 'users/:id' => 'users#show', as: :user
get '/trips' => 'trips#index', as: :trips
post 'trips', to: 'trips#create'
get '/trips/create' => 'trips#create', as: :trip
get '/trips/:id' => 'trips#show'
get '/activities' => 'activities#show', as: :activities
get '/friends' => 'friends#index'
get '/friends/profile/:id' => 'friends#show'

# resources :users
end


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

