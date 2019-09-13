Rails.application.routes.draw do
  get 'cooks/show'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'meals#index'

  resources :meals, only: [ :index, :show, :new, :create ] do
    resources :orders, only: :create
    collection do
      get 'category'
    end
  end

  resources :orders, only: [ :show ] do
    resources :reviews, only: [ :new, :create ]
  end

  resources :dashboards, only: [ :index, :update ]

  resources :cooks, only: [ :show ]

  namespace :admin do
    resources :meals, only: [:index]
    resources :orders, only: [:index :update]
    resources :daily_meal, only: [ :show ]
  end
end
