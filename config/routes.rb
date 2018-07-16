Rails.application.routes.draw do
  get 'cart/add_to_cart'

  get 'cart/view_order'

  get 'cart/checkout'

  devise_for :users
  
  root 'storefront#all_products'

  get 'categorical' => 'storefront#by_category'

  get 'branding' => 'storefront#by_brand'

  resources :products
end
