# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users
  root 'home#index'
  
  resources :items

  resources :categories do
    resources :items, only: %i[index show]
  end

  resources :home do
    resources :items, only: [:index]
  end

end
