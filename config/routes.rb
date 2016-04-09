Rails.application.routes.draw do

  mount_devise_token_auth_for 'User', at: 'auth'

  resources :conversations, :only => [:index, :show, :create, :update, :destroy] do
      resources :messages, :only => [:index, :show, :create, :update, :destroy]
  end

  resources :favourites, :only => [:index, :show, :create, :update, :destroy]

  resources :friendships, :only => [:index, :show, :create, :destroy]

  post '/friendships/:id/confirm', to: 'friendships#confirm', as: 'confirm_friendship'

  resources :giphts, :only => [:index, :show, :create]

end
