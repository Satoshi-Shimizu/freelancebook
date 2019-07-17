Rails.application.routes.draw do
  get 'static_pages/home'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root    'items#index'
  get     'static_pages/home'
  resources :items
  resources :users , only: [:show]
  resources :userprofiles
  post       '/goods/:item_id' => "goods#create"
  delete    '/goods/:item_id' => "goods#destroy"

end
