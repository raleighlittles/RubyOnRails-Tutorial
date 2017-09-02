Rails.application.routes.draw do
  get 'sessions/new'

  get 'users/new'

  root 'static_pages#home'
  get  '/help',    to: 'static_pages#help'
  get  '/about',   to: 'static_pages#about'
  get  '/contact', to: 'static_pages#contact'
  get '/signup', to: 'users#new'

  # Add new routes for logging in/out
  get '/login', to: 'sessions#new' # logging in creates a new session, which makes sense
  get '/login', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'

  resources :users
end