Rails.application.routes.draw do

  root :to => "users#new"
  resources :users, only: [:new, :show, :create]
  resources :events, only: [:new, :index, :show, :create]

  match '/signin', to: 'users#new', via: 'get'
  match '/signout', to: 'users#destroy', via: 'delete'

  match '/events', to: 'events#index', via: 'get'
  match '/create_event', to: 'events#new', via: 'get'


end
