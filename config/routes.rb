Rails.application.routes.draw do
  mount_devise_token_auth_for 'User', at: 'auth'

  get '/current_user_info' => 'application#current_user_info'
end
