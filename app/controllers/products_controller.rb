class ProductsController < ApplicationController
  def index
    @products = Product.search(params[:search])
    @order_item = current_order.order_items.new
  end
end
