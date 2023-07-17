class CartsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_cart, except: :index

  def index
    @carts = Cart.order(:id)
  end

  def show
  end
  
  def add
    @product = Product.find(params[:product_id])
    current_item = @cart.items.find_by(product_id: @product.id)
    if  current_item && current_item.quantity > 0
      current_item.increment!(:quantity, 1)
    else
      @cart.items.create(product_id: @product.id, quantity: 1)
    end
    redirect_to cart_path(@cart)
  end
  
  def destroy
    @item = Item.find(params[:item_id])
    @item.destroy
    redirect_to(@cart)
  end

  private

  def set_cart
    @cart = current_user.cart
  end
end
