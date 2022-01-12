Rails.application.routes.draw do
  devise_for :users
  root to: 'post_images#index'
  resources :post_images, only: [:new, :create, :index, :show, :destroy, :edit, :update] do
  resources :post_comments, only: [:create, :destroy]
  resource :favorites, only: [:create, :destroy]
  end
  resources :users, only: %i[show edit update index]
  get '/search', to: 'searches#search'
end
