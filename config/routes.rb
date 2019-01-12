Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # resources :books, only: [:index, :show, :new, :create, :destroy] do
  #   resources :reviews, shallow: true, only: [:new, :create, :destroy]
  # end
  
  get '/books', to: 'books#index'
  post '/books', to: 'books#create'
  get '/books/new', as: 'new_book', to: 'books#new' 
  get '/books/:id', as: 'book', to: 'books#show'
  delete '/books/:id', to: 'books#destroy'
  
  get '/books/:book_id/reviews/new', as: 'new_book_review', to: 'reviews#new'
  post '/books/:book_id/reviews', as: 'book_reviews', to: 'reviews#create'
  delete '/reviews/:id', as: 'review', to: 'reviews#destroy'

  root 'welcome#index'
  
  # resources :users, only: [:show]
  get '/users/:id', as: 'user', to: 'users#show'

  # resources :authors, only: [:show, :destroy]
  get '/authors/:id', as: 'author', to: 'authors#show'
  delete 'authors/:id', to: 'authors#destroy'
end
