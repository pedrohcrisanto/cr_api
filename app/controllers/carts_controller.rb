class CartsController < ApplicationController
  def index
    @carts = Cart.all
    render json: @carts
  end
  def new
    @cart = Cart.new
    @cart.cart_items.build
  end
  def create
    @cart = Cart.new(cart_params)

      if @cart.save
        render json: @cart, status: :created, localtion: @cart
      else
        render json: @cart.errors, status: :unprocessable_entity
      end
  end
  private
  # Use callbacks to share common setup or constraints between actions.
  def set_cart
    @cart = Cart.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def client_params
    params.require(:cart).permit(:customer_id, cart_items_attributes: [
        :id, :cart_id, :medicine_id, :quantity
    ])
  end
end
