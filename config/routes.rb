Rails.application.routes.draw do
  devise_for :users
  root to: 'post_images#index'
  resources :post_images, only: %i[new create edit show destroy update] do
    resources :post_comments, only: %i[create destroy]
  end
  resources :users, only: %i[show edit update index]
  resource :favorites, only: %i[create destroy]
end
