Rails.application.routes.draw do
  devise_for :users
  root 'home#index'
  resources :event_categories
  resources :categories
  resources :events
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
