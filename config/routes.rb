Rails.application.routes.draw do
	root "clients#index"
	devise_for :users
	resources :users, only: [:new, :create]
	
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

	resources :clients
	resources :receipts
	resources :routes
	resources :cajeros
	
end
