Rails.application.routes.draw do

  mount_devise_token_auth_for 'User', at: 'auth'

  resources :conversations, :only => [:index, :show, :create, :update, :destroy]
  resources :favourites, :only => [:index, :show, :create, :update, :destroy]
  resources :friendships, :only => [:index, :show, :create, :update, :destroy]
  resources :giphts, :only => [:index, :show, :create, :update, :destroy]

end
