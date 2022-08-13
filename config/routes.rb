Rails.application.routes.draw do

  devise_for :users
  root to: "homes#top"

  resources :post_images, only: [:new, :create, :index, :show, :destroy] do
    resource :favorites, only: [:create, :destroy]
    resources :post_comments, only: [:create, :destroy]
  end
  # get 'post_images/new'
  # get 'post_images/index'
  # get 'post_images/show'
  
  resources :users, only: [:show, :edit, :update]
  # get 'users/show'
  # get 'users/edit'
  
  get 'homes/about' => 'homes#about', as: 'about'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end