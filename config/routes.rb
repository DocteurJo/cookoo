Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'meals#index'

  resources :meals, only: [ :index, :show, :new, :create ] do
    resources :orders, only: :create
    collection do
      get 'category'
    end
  end

  resources :orders, only: [ :show ]

  resources :dashboards, only: [ :index ]

  patch '/orders/:id/review_save', to: 'orders#review_save', as:'review_save'
end
