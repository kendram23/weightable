Weightable::Application.routes.draw do
  devise_for :users, :path => '', :path_names => {:sign_in => 'login', :sign_out => 'logout'}

  resources :users, only: [:show, :index, :edit, :update]
  resources :weigh_ins, only: [:new, :create, :show]
  
end
