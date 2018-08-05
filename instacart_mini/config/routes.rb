Rails.application.routes.draw do
  root 'welcome#index'
  resources :users
  resources :stores
  resources :carts
  # resources :products
  # resources :order_items

  # --------------------------------
  # product paths - tied to store id
  # --------------------------------
  get 'stores/:store_id/products', to: 'products#index', as: 'products'
  get 'stores/:store_id/products/new', to: 'products#new', as: 'new_product'
  post 'stores/:store_id/products', to: 'products#create'
  get 'stores/:store_id/products/:id', to: 'products#show', as: 'product'
  get 'stores/:store_id/products/:id/edit', to: 'products#edit', as: 'edit_product'
  patch 'stores/:store_id/products/:id', to: 'products#update'
  delete 'stores/:store_id/products/:id', to: 'products#destroy'
  # --------------------------------
  # product paths - tied to store id
  # --------------------------------

  # ---------------------------------------------------------------------
  # order items paths - tied to cart id - store id included for filtering
  # ---------------------------------------------------------------------
  get 'carts/:cart_id/:store_id', to: 'order_items#new', as: 'new_order_item'
  get 'carts/:cart_id/:store_id', to: 'order_items#index', as: 'order_items'
  post 'carts/:cart_id/:store_id', to: 'order_items#create'
  get 'carts/:cart_id/:store_id/order_items/:id', to: 'order_items#show', as: 'order_item'
  get 'carts/:cart_id/:store_id/order_items/:id/edit', to: 'order_items#edit', as: 'edit_order_item'
  patch 'carts/:cart_id/:store_id/order_items/:id', to: 'order_items#update'
  delete 'carts/:cart_id/:store_id/order_items/:id', to: 'order_items#destroy'
  # --------------------------------
  # order items path - tied to cart id
  # --------------------------------

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
