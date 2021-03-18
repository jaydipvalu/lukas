Rails.application.routes.draw do
  devise_for :users
  # require 'resque/server'
  # mount Resque::Server, at: '/jobs'


  root 'home#index'
  resources :cars
  resources :checkouts

  get 'contact', to: 'home#contact'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
