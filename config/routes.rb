Rails.application.routes.draw do
  get 'welcome/index'

	root "welcome#index"
	devise_for :users
	resources :users, only: [:new, :create]
	
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

	resources :clients
	resources :receipts
	resources :routes
	resources :cajeros
	resources :analiticas
	
end
