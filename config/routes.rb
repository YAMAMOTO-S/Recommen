Rails.application.routes.draw do
  devise_for :users
  root "home#index"

  resources :notes
  resources :users, only: :show
end
