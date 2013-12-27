Weightable::Application.routes.draw do
  devise_for :users
  resources :users
  

  resources :users, only: [:show, :index]
  resources :weigh_ins, only: [:new, :create]
  
  get 'users/test' => 'users#test'


end
