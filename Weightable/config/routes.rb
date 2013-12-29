Weightable::Application.routes.draw do
  devise_for :users, :path => '', :path_names => {:sign_in => 'login', :sign_out => 'logout'}

  resources :users, only: [:show, :index, :edit, :update]
  resources :weigh_ins, only: [:new, :create, :show]

  authenticated :user do
    root to: 'users#index', as: :authenticated_root
  end

  unauthenticated do
    root to: 'layouts#home'
  end
  
end
