# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users
  resources :users
  root 'home#index'
<<<<<<< HEAD
=======
  get 'home/private'
>>>>>>> e635ad6a9678c62a9eadb8f7ec25b371a84406e3
end
