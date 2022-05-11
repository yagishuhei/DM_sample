Rails.application.routes.draw do
  devise_for :users
  root to: "homes#top"
  resources :users, only: [:index,:show,:edit,:update]
  
  resources :messages, only: [:create]
  resources :rooms, only: [:create, :show, :index]

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
