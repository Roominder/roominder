Rails.application.routes.draw do
  get 'sessions/new'
  get 'sessions/create'
  get 'sessions/destroy'
  resources :secure_users
  get 'sign_up/index'
  get 'sign_up/create_room'
  get 'sign_up/join_room'
  post 'sign_up/new_room'
  post 'sign_up/assign_room'
  get 'createtask/index'
  get 'taskview/index'
  get 'join/index'
  get 'welcome/index'

  resources :rooms do
    resources :secure_users do
      resources :tasks
    end
  end

  resources :sessions, only: [:new, :create, :destroy]
  get 'signup', to: 'secure_users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'
   
  root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
