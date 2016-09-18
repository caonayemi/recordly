Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'welcome#index'

  get 'login' => 'sessions#new'
  post 'login' => 'sessions#create'
  delete 'logout' => 'sessions#destroy'
  get 'collection' => 'collection#show'

  resources :users, only: [:show, :new, :create]

  resources :artists
  # resources :artists, has_many: :albums

  resources :albums
  # resources :albums, has_many: :songs

  resources :songs
end
