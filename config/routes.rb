Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users, only: [:create, :index]
  resources :teachers, only: [:index]
  resources :students, only: [:index]
  resources :assignments, only: [:create, :update, :destroy]
  resources :student_assignments, only: [:create, :update, :destroy]
  post '/login', to: 'auth#create'
  get '/profile', to: 'users#profile'
end
