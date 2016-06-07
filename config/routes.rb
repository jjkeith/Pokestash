Rails.application.routes.draw do

  root 'pages#index'

  resources :users
  resources :cards
  resources :pages
  # resources :sessions

  delete '/logout' => 'sessions#destroy', as: :logout
  resources :sessions, only: [:new, :create]

end
