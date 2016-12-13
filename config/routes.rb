Rails.application.routes.draw do
  resources :domains
  root to: 'visitors#index'
  devise_for :users
  resources :users
end
