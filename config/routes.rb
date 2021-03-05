Rails.application.routes.draw do
  # require 'resque/server'
  # mount Resque::Server, at: '/jobs'

  devise_for :users
  root 'home#index'
  resources :cars
  resources :checkouts

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
