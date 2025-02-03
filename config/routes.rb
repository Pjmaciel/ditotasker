# frozen_string_literal: true

require 'sidekiq/web'

Rails.application.routes.draw do
  #  principal
  root 'pages#construction'

  # Static pages
  get '/construction', to: 'pages#construction'
  get '/about', to: 'pages#about'
  get '/contact', to: 'pages#contact'

  # Sidekiq Web UI (only accessible to Admin in the future)
  mount Sidekiq::Web => '/sidekiq'
end
