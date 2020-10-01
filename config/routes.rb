Rails.application.routes.draw do
  namespace :admins do
    get 'orders/index'
    get 'orders/show'
  end
  namespace :admins do
    get 'categories/index'
    get 'categories/edit'
  end
  namespace :admins do
    get 'products/index'
    get 'products/new'
    get 'products/show'
    get 'products/edit'
  end
  namespace :admins do
    get 'customers/top'
    get 'customers/about'
    get 'customers/index'
    get 'customers/show'
    get 'customers/edit'
  end
  namespace :customers do
    get 'addresses/create'
    get 'addresses/index'
    get 'addresses/edit'
  end
  namespace :customers do
    get 'orders/new'
    get 'orders/confirm'
    get 'orders/create'
    get 'orders/complete'
    get 'orders/index'
    get 'orders/show'
  end
  devise_for :admins
  devise_for :customers
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
