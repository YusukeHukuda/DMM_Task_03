Rails.application.routes.draw do
  root to: "homes#top"
  resources :users, only: [:index, :show, :edit, :update] do
end
  resources :books, only: [:create, :index, :show, :edit, :update, :destroy] do
end
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
