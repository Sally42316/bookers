Rails.application.routes.draw do
  get 'books/new'
  get '/books' => 'books#index'
  get 'books/:id/edit' => 'books#edit', as: 'edit_book'
  get '/top' => 'homes#top' #ようこそ Bookers へ！
  post 'books' => 'books#create'
  get '/check' => 'books#check'
  patch 'books/:id' => 'books#update', as: 'update_book'
  delete 'books/:id' => 'books#destroy', as: 'destroy_book'
  get 'books/:id' => 'books#show', as: 'book'
  resources :books
  root to: 'homes#top'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
