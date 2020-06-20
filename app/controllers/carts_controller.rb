class CartsController < ApplicationController
  def index
    @carts = Cart.all
    render json: @carts
  end

  def new
    @cart = Cart.new
    @cart.cart_items.build
  end

  private
  def set_cart
    @cart = Cart.find(params[:id])
  end

  def client_params
    params.require(:cart).permit(:customer_id, cart_items_attributes: [
        :id, :cart_id, :medicine_id, :quantity
    ])
  end
end
