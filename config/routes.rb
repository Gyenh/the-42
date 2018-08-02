Rails.application.routes.draw do
  root 'static_pages#home'

  get 'sessions/new'
  get 'sessions/create'
  get 'sessions/destroy'

  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  # get 'static_pages/home'
  get 'static_pages/secret', to: 'static_pages#secret', as:'secret'
  resources :users
end
