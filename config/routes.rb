Rails.application.routes.draw do
	root 'static_pages#home'
	get '/home', to: 'static_pages#home'
	get '/about', to: 'static_pages#about'
	resources :news
  	devise_for :users
	resources :posts
end
