Rails.application.routes.draw do
  get 'organisation/list'
  get 'organisation/show'
  get 'organisation/new'
root :to => 'people#index'



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
