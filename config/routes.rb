require 'sidekiq/web'
Rails.application.routes.draw do
  get 'api/about'
  get 'contact/index'
  post 'api/haiku'
  mount Sidekiq::Web => '/sidekiq'
  devise_for :users
  root 'home#index'
  resources :event_categories
  resources :categories
  resources :events
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
