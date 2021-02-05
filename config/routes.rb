Rails.application.routes.draw do
  get 'chats/show'
  get 'search/search'
  devise_for :users, :controllers => {
    :registrations => 'users/registrations'
  }
  resources :users,only: [:show,:index,:edit,:update] do
    member do
      get :following, :followers
    end
  end
  resources :books do
    resource :favorites, only: [:create, :destroy]
    resources :book_comments, only: [:create, :destroy]
  end
  root 'homes#top'
  get 'home/about' => 'homes#about'
  resources :relationships, only: [:create, :destroy]
  get '/search' => 'search#search'
  get 'chat/:id' => 'chats#show', as: 'chat'
  resources :chats, only: [:create]
end