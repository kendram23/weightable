Weightable::Application.routes.draw do
  devise_for :users, :path => '', :path_names => {:sign_in => 'login', :sign_out => 'logout'},
                     :controllers => { :registrations => "registrations" } 

  resources :users, only: [:show, :index, :edit, :update]
  resources :weigh_ins, only: [:new, :create, :show]
  resources :friendships
  resources :truckins, only: [:new, :create]



  get "/users/:id/success", to: 'users#success', as: "success" 

  post 'likes/:resource_name/:resource_id' => "likes#create",  :as => 'like' 

  # If user is not signed in, this redirects to sign in  page
  unauthenticated do
    root to: 'layouts#home'
  end
  
end
