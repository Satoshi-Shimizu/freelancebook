Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root    'items#index'
  get     'items/new'   =>  'items#new'
  post    'items'       =>  'items#create'
  delete  'items/:id'  =>   'items#destroy'
  get     'users/:id'   =>  'users#show'
end
