Rails.application.routes.draw do
  get 'reviews/new'
  get 'reviews/create'
  get 'orders/show'
  get 'orders/new'
  get 'orders/create'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'users#index'

  resources :meals, only: [ :index, :show, :new, :create ]

  resources :orders, only: [ :show, :new, :create ] do
    resources :reviews, only: [ :new, :create ]
  end
end
