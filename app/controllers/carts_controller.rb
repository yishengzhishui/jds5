class CartsController < ApplicationController
  def clean
    @cart = current_cart
    @cart.clean!
    flash[:notice] = "已经清空购物车"
    redirect_to carts_path
  end
end
