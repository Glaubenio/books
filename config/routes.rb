# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :admins
  root to: 'books#index'
  resources :books, except: :index
end
