Weightable::Application.routes.draw do
  devise_for :users
  resources :users
  

  get 'users/test' => 'users#test'
  get 'users/:id' => 'users#show', as: 'user'

end
