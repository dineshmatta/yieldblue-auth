Rails.application.routes.draw do
	resources :domains
	root to: 'visitors#index'
	devise_for :users
	resources :users

	as :admin do
		post 'admin/editors' => 'editors#create'
		# your other :admin routes here
	end
end
