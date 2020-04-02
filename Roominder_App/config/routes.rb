Rails.application.routes.draw do
  get 'sign_up/index'
  get 'sign_up/create_room'
  post 'sign_up/new'
  get 'createtask/index'
  get 'taskview/index'
  get 'join/index'
  get 'welcome/index'

  resources :rooms do
    resources :users do
      resources :tasks
    end
  end
  
  root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
