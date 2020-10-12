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
    get 'search' => 'searches#search'
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
    get 'about' => 'products#about'
    delete 'cart_products/destroy_all' => 'cart_products#destroy_all'
    resources :products, only: [:index, :show] do
      resources :cart_products, only: [:index, :create, :destroy, :update]
    end
    get 'orders/confirm' => 'orders#confirm'
    get 'orders/complete' => 'orders#complete'
    resources :orders, only:[:new, :create,:index, :show]
    resources :addresses, only: [:create, :index, :edit, :update, :destroy]
    get 'search' => 'searches#search'
  end


end
