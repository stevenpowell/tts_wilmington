Rails.application.routes.draw do
  get 'profiles/show'

  get 'profiles/index'

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :tweets

  root 'tweets#index'
  
  get "profiles/:id" => "profiles#show", as: :profile

 get "profiles" => "profiles#index"
end
