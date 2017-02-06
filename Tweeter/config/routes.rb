Rails.application.routes.draw do
	get 'likes/create'

	get 'profiles/show'

	get 'profiles/index'

	devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
	resources :tweets do
  	resource :like
	end

	resources :relationships

	root 'tweets#index'
  
	get "profiles/:id" => "profiles#show", as: :profile

	get "profiles" => "profiles#index"
	
	get "feed" => "profiles#feed"

# Experimenting here.  May be cause of issue
	# get '/:id', to: 'profiles#show', as: :profile
end
