Rails.application.routes.draw do
  
  root 'generators#index'
  
  get '/sessions/new' => 'sessions#new'
  post '/sessions' => 'sessions#create'
  get '/logout' => 'sessions#destroy'
  get '/account' => 'users#show'
  
  
  
  
  # This is the Golden 7 for Movies
  get '/generators' => 'generators#index'
  get '/generators/new' => 'generators#new'
  post '/generators' => 'generators#create'

  get '/generators/:id' => 'generators#show'
  get '/generators/:id/edit' => 'generators#edit'
  patch '/generators/:id' => 'generators#update'

  delete '/generators/:id' => 'generators#destroy'
  
  resources :users
  resources :fuels
  resources :states
  
  


end
