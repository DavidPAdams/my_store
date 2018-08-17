class StorefrontController < ApplicationController
  def all_products
    @products = Product.all
  end

  def by_category
    @products = Product.where(category_id: params[:category_id])
    @category = Category.find(params[:category_id])
  end

  def by_brand
    @products = Product.where(brand: params[:brand])
    @brand = params[:brand]
  end
end
