BlossomDataCollector::Application.routes.draw do

  get "comments/create"

  resources :users
  resources :cups
  resources :comments, only: [:create, :destroy]
  resources :powerons
  # resources :sessions, only: [:new, :create, :destroy]

  # match '/signup',  to: 'users#new'
  # match '/signin',  to: 'sessions#new'
  # match '/signout', to: 'sessions#destroy', via: :delete
  match 'users/cups/poll', to: 'cups#poll'

  root to: 'users#index'

  match '/help',    to: 'static_pages#help'
  match '/about',   to: 'static_pages#about'
  match '/contact', to: 'static_pages#contact'
  # match '/signup', to: 'users#new'
end
