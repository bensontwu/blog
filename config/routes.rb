Rails.application.routes.draw do
  resources :news
  	devise_for :users
	root 'posts#index'

	resources :posts
end
