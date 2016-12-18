Rails.application.routes.draw do
	resources :domains
	devise_for :users
	
	devise_scope :user do
	  authenticated :user do
	    root :to => 'visitors#index'
	  end
	  unauthenticated :user do
	    root :to => 'devise/sessions#new', as: :unauthenticated_root
	  end
	end

	resources :users, except: :create

	post 'create_user' => 'users#create', as: :create_user
end
