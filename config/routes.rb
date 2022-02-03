Rails.application.routes.draw do
  root to: "tasks#index"
  get 'users/new'
  get 'users/create'
  get 'sessions/new'
  get 'sessions/create'
  get 'sessions/destroy'
  delete "tasks/destroy"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :tasks
  
  get "login", to: "sessions#new"
  post "login", to: "sessions#create"
  delete "logout", to: "sessions#destroy"
  
  
  get "signup", to: "users#new"
  resources :users, only: [:new, :create, :show]
  
  
end
