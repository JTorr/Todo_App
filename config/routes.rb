Rails.application.routes.draw do
  devise_for :users

  root 'static_pages#home'

  match '/help', to: 'static_pages#help', via: 'get'

  match '/about', to: 'static_pages#about', via: 'get'

  #not necessary because Devise creates this route automatically
  # match '/users', to: 'devise/registrations#create', via: 'post'
 # post '/users' => 'devise/registrations#create'
end
