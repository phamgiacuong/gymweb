class ProductsController < ApplicationController
  def new
  end

  def index
    @products = Product.search(params[:search])
  end
end
