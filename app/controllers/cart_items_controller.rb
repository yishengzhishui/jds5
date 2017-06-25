class CartItemsController < ApplicationController
  def destroy
    @cart = current_cart
    @cart_item = @cart.cart_items.find_by(product_id: params[:id])
    @product = @cart_item.product
    @cart_item.delete
    
    flash[:notice] = "成功将#{@product.title} 从购物车中删除!"
    redirect_to :back
  end
end
