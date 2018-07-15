Rails.application.routes.draw do
  devise_for :users
  
  root 'storefront#all_products'

  get 'categorical' => 'storefront#by_category'

  get 'branding' => 'storefront/by_brand'

  resources :products
end
