Rails.application.routes.draw do
  
  devise_for :admins
  namespace :admins do
    root 'customers#top'
    resources :customers, only: [:index, :show, :edit, :update]
    resources :products, only: [:index, :new, :create,:show, :edit, :update]
    resources :categories, only: [:index, :create, :edit, :update]
    resources :orders, only: [:index, :show, :update]
    resources :order_items, only: [:update]
  end

  devise_for :customers
  scope module: :customers do
    root 'products#top'
    resources :customers, only:[:edit, :update]
    get 'customers/my_page' => 'customers#show'
    get 'customers' => 'customers#check'
    patch 'customers/withdrawal' => 'customers#withdrawal'
    resources :products, only: [:index, :show]
    get 'about' => 'products#about'
    resources :cart_products, only: [:index, :create, :destroy, :update]
    delete 'cart_products/destroy_all' => 'cart_products#destroy_all'
    resources :orders, only:[:new, :create,:index, :show]
    get 'orders/confirm' => 'orders#confirm'
    get 'orders/complete' => 'orders#complete'
    resources :address, only: [:create, :index, :edit, :update, :destroy]
  end


end
