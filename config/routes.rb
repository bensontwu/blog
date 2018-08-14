Rails.application.routes.draw do
	get 'static_pages/home'
	get 'static_pages/about'
	get 'posts', to: 'posts#index'
	resources :news
  	devise_for :users
	root 'static_pages#home'
	resources :posts
end
