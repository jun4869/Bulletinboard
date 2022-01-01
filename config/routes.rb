Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    passwords: 'users/passwords',
    registrations: 'users/registrations'
  }
  root to: 'home#index'
  resources :users, only: [:show]
  resources :posts, only: [:create]

  namespace :api, { format: 'json'} do
    resources :users, :only => [:show]
  end

end
