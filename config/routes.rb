Rails.application.routes.draw do
  resources :order_items
  get 'cart', to: 'cart#show'
  get 'search', to: 'menu#search'
  resources :categories
  get 'menu', to: 'menu#index'
  devise_for :users
  resources :products, only: [:index] do
    member do
      get 'preview'
    end
  end
  root 'pages#home'
  get 'info', to: 'pages#info'
  get 'catering', to: 'pages#catering'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

