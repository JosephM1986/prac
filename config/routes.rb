Rails.application.routes.draw do
  get 'organisation/list'
  get 'organisation/show'
  get 'organisation/new'
root :to => 'persons#index'
  get 'show', to: 'persons#show'
  resources :persons
  post 'persons/create'
  patch 'persons/update'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
