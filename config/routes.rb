# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users
  resources :users
  root 'home#index'
  resources :items
  get 'reflex_category', to: 'items#reflex'
  get 'objectif_category', to: 'items#objectif'
  get 'eclairage_category', to: 'items#eclairage'
end
