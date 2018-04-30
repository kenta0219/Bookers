Rails.application.routes.draw do
  devise_for :users
  resources :books
  resources :users, only: [:index,:show,:edit,:update]
  # resources :session
   get '/top' => 'books#top'
   get 'books/new'
   root 'books#index'
   get 'users/:id' => 'users#show'
   get '/about' => 'books#about'
  
  end