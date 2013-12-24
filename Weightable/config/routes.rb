Weightable::Application.routes.draw do
  devise_for :users

  get 'users/:id' => 'users#show', as: 'user'

end
