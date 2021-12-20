Rails.application.routes.draw do
  get 'message/index'
  get 'home/index'
  devise_for :users

  root 'message#index'

end
