Rails.application.routes.draw do
  root to: 'pages#home'

  resources :groups
  resources :users do
      resource :events, except: [:show, :edit, :new], path: "events/:day/:time"
  end

  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
