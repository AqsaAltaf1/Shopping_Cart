Rails.application.routes.draw do
  root 'products#index'
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations',
    passwords: 'users/passwords'
  } 
  devise_scope :user do
    get 'users/index'
    get 'shops/index'
    resources :users, except: :index  do
      resources :shops, except: :index 
    end
  end
  resources :categories
  resources :products do
    member do
      delete :delete_file
    end
  end
  resources :carts
  resources :items
  resources :orders
  patch 'items/update_item/:id' => 'items#update_item', :as => 'update_item' 
  post 'carts/add/:product_id' => 'carts#add', :as => 'add'
  get 'carts/:cart_id/check' => 'carts#check', :as => 'check'
end
