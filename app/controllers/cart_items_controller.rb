class CartItemsController < ApplicationController
  def index
    @car_items = CartItem.all

    render json: @car_items
  end
end

