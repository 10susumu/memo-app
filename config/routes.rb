Rails.application.routes.draw do
  get 'users/show'
  get 'items/index'
  devise_for :users
  root 'items#index'
  resources :users, only: [:show, :update]
  resources :items, only: [:new, :create]
  
end
