Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root    'items#index'
  get     'items/new'       =>  'items#new'
  post    'items'           =>  'items#create'
  get     'items/:id'       =>  'items#show'
  delete  'items/:id'       =>  'items#destroy'
  patch   'items/:id'       =>  'items#update'
  get     'items/:id/edit'  =>  'items#edit'
  get     'users/:id'       =>  'users#show'
end
