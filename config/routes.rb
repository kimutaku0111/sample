Rails.application.routes.draw do
  
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users, only: [:show]
  resources :posts do
    resources :likes, only: [:create, :destroy]
    resources :comments, only: [:create]
  end
  
  
  

  resources :perfumes

  get 'perfumes_index' => 'perfumes#index'

  
  root 'posts#index'


end
