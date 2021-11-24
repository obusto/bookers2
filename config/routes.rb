Rails.application.routes.draw do
  root to: 'homes#top'
  get 'home/about' => 'homes#about'
  
  devise_for :users
  resources :users, only: [:index, :show, :edit]
  resources :books, only: [:index, :show, :edit, :create, :update, :destroy]
end
