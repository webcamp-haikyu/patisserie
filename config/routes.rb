Rails.application.routes.draw do
  
  devise_for :admins, controllers: {
  sessions:      'admins/sessions',
  passwords:     'admins/passwords',
  registrations: 'admins/registrations'
  }
  namespace :admins do
    root 'customers#top'
    resources :customers, only: [:index, :show, :edit, :update]
    resources :products, only: [:index, :new, :create,:show, :edit, :update]
    resources :categories, only: [:index, :create, :edit, :update, :destroy]
    resources :orders, only: [:index, :show, :update]
    resources :order_items, only: [:update]
  end

  devise_for :customers, controllers: {
  sessions:      'customers/sessions',
  passwords:     'customers/passwords',
  registrations: 'customers/registrations'
  }

  scope module: :customers do
    root 'products#top'
    resources :customers do
      collection do
        get 'check'
        patch 'withdrawal'
      end
    end
    get 'customers/my_page' => 'customers#show'
    get 'customers/edit' => 'customers#edit'
    patch 'customers' => 'customers#update'
    resources :products, only: [:index, :show]
    get 'about' => 'products#about'
    resources :cart_products, only: [:index, :create, :destroy, :update]
    delete 'cart_products/destroy_all' => 'cart_products#destroy_all'
    resources :orders, only:[:new, :create,:index, :show]
    get 'orders/confirm' => 'orders#confirm'
    get 'orders/complete' => 'orders#complete'
    resources :addresses, only: [:create, :index, :edit, :update, :destroy]
  end


end
