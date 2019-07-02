Rails.application.routes.draw do
  resources :groups
  resources :users do
      resources :events
  end

  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
