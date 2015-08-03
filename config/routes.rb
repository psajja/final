Rails.application.routes.draw do
  
  root 'generators#index'
  
  # This is the Golden 7 for Movies
  get '/generators' => 'generators#index'
  get '/generators/new' => 'generators#new'
  post '/generators' => 'generators#create'

  get '/generators/:id' => 'generators#show'
  get '/generators/:id/edit' => 'generators#edit'
  patch '/generators/:id' => 'generators#update'

  delete '/generators/:id' => 'generators#destroy'


end
