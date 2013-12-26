Weightable::Application.routes.draw do
  devise_for :users

  get 'users/:id' => 'users#show',  as: 'user'
  get 'users'     => 'users#index', as: "users"
  
  get 'users/test' => 'users#test'

end
