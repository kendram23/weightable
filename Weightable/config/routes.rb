Weightable::Application.routes.draw do
  devise_for :users

  resources :users, only: [:show, :index] do
    resources :weigh_ins, only: [:new, :create]
  end

end
