Rails.application.routes.draw do
root to: 'pages#home'
devise_for :users
# resources :users, :only => [:show]
get 'users/:id' => 'users#show', as: :user
# resources :users, except: :show
# get 'profile/:user_id' => 'users#show', as: :profile
# resources :users, only: [:edit, :update, :show]


end


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


