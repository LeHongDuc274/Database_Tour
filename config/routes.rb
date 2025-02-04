Rails.application.routes.draw do
  devise_for :users
   resources :users, only: [:show]
  as :user do
    get "signin" => "devise/sessions#new"
    post "signin" => "devise/sessions#create"
    delete "signout" => "sessions/sessions#destroy"
    get "signup" => "devise/registrations#new"
    post "signup" => "devise/registrations#create"
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
