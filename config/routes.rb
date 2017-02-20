Rails.application.routes.draw do
	root "clients#index"
  
	
	get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
	devise_for :users
	resources :users, only: [:new, :create]
	
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
	root "clients#index"
	resources :clients
	
end
