Weightable::Application.routes.draw do
  devise_for :users

  get 'users/:id' => 'users#show', as: 'user'
  get 'weigh_in/new' => 'weigh_in#new', as 'new_weigh_in'

end
