Rails.application.routes.draw do

  devise_for :users
  root to: 'post_images#index'
  resources :post_images, only: [:new, :create, :edit, :show, :destroy, :update] do
  resources :post_comments, only: [:create, :destroy]
  end
  resources :users, only: [:show, :edit, :update, :index]
  resource :favorites, only: [:create, :destroy]

end
