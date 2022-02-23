Rails.application.routes.draw do
  root 'static_pages#index'
  get 'static_pages/index'
  get 'static_pages/secret'
  get 'static_pages/about'
  devise_for :users

  resources :events
  resources :user
  resources :attendance, only: [:new, :create]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
