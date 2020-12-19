class ProductsController < ApplicationController

  def index
    @products = Product.all
    @product = Product.new
    @cart = cart
  end

  def add
    # @product = Product.new
    cart << params[:product]
    render :index
  end
end
