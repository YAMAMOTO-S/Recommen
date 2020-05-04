Rails.application.routes.draw do
  devise_for :users
  root "home#index"

  resources :notes do
    resource :favorites, only: [:create, :destroy]
    resources :comments, only: [:create, :destroy]
  end

  resources :users, only: [:show, :edit, :update]
end
