class CartsController < ApplicationController
  before_action :set_cart

  def show
    @cart = current_user.cart || Cart.create(user: current_user)  # Assuming you have current_user
    @product = Product.all  # Fetch all products (adjust based on your needs)
    @cart_items = @cart.cart_items
    byebug  # Set breakpoint here
    render :show
  end


  def add_item
    @cart.add_item(params[:product_id])
    redirect_to cart_path
  end

  def remove_item
    @cart.remove_item(params[:product_id])
    redirect_to cart_path
  end

  private

  def set_cart
    @cart = current_user.cart || Cart.create(user: current_user)  # Create cart if user doesn't have one
  end
end
