class ProductsController < ApplicationController
  def index
    @products = Product.all
    @product = Product.new
  end

  def add
    # @product = Product.new
    cart << params[:product][:name]
    render :index
  end
end
