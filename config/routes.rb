Rails.application.routes.draw do

  root 'sessions#home'
  get '/home', to: 'sessions#home'
  get  '/signup',  to: 'users#new'
  post '/signup',  to: 'users#create'
  get   '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  get '/history', to: 'sessions#history'
  post '/term', to: 'terms#create'
  get '/term', to: 'sessions#home'
  resources :users
  resources :terms

end
