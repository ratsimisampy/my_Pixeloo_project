# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users
  resources :users
  root 'home#index'
  resources :items
  get "/categories/reflex", to: "categories#reflex", as: "category/reflex"
  get "/categories/objectif", to: "categories#objectif", as: "category/objectif"
  get "/categories/eclairage", to: "categories#eclairage", as: "category/eclairage"
end
