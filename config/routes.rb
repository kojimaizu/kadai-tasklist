Rails.application.routes.draw do
  root to: "tasks#index"
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :tasks, only: [:create, :new, :edit, :show, :update, :destroy]
  
  get "login", to: "sessions#new"
  post "login", to: "sessions#create"
  delete "logout", to: "sessions#destroy"
  
  get "signup", to: "users#new"
  resources :users, only: [:create]
  
  
end
