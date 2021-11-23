Rails.application.routes.draw do
  get 'books/index'
  get 'books/show'
  root to: 'homes#top'
  devise_for :users
  resources :users, only: [:index, :show, :edit]
end
