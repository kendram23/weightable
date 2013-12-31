Weightable::Application.routes.draw do
  devise_for :users, :path => '', :path_names => {:sign_in => 'login', :sign_out => 'logout'},
                     :controllers => { :registrations => "registrations" } 

  resources :users, only: [:show, :index, :edit, :update]
  resources :weigh_ins, only: [:new, :create, :show]

  # If user is not signed in, this redirects to sign in  page
  unauthenticated do
    root to: 'layouts#home'
  end
  
end
