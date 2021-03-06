Rails.application.routes.draw do
  post 'add_to_cart' => 'cart#add_to_cart'

  get 'view_order' => 'cart#view_order'

  get 'checkout' => 'cart#checkout'

  post 'delete_from_cart' => 'cart#delete_from_cart'

  post 'order_complete' => 'cart#order_complete'

  devise_for :users

  root 'storefront#all_products'

  get 'categorical' => 'storefront#by_category'

  get 'branding' => 'storefront#by_brand'

  resources :products
end
