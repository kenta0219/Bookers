Rails.application.routes.draw do
  
  devise_for :users

  resources :books

  get '/top' => 'books#top'

  get 'books/new'

  root 'books#index'

  get 'users/:id' => 'users#show'

  get '/about' => 'books#about'

  resources :users, only: [:index,:show,:edit,:update]


  end




  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
