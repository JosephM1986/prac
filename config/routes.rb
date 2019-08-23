# frozen_string_literal: true

Rails.application.routes.draw do
  root to: 'people#index'
  resources :people do
    resources :organisations
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
