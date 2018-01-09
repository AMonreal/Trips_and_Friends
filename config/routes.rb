Rails.application.routes.draw do
 devise_scope :user do
    get "/sign_in" => "devise/sessions#new" # custom path to login/sign_in
    get "/sign_up" => "devise/registrations#new", as: "new_user_registration" # custom path to sign_up/registration
  end

root to: 'pages#home'
end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

# get    '/users/sign_in',  to: 'devise/sessions#new'
# get    '/login',   to: 'sessions#new'
# post   '/login',   to: 'sessions#create'
# delete '/logout',  to: 'sessions#destroy'
# resources :users
