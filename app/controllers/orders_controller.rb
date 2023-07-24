class OrdersController < ApplicationController
  before_action :set_order, except: :index
  
  def index
    @orders = Order.order(:id)
    authorize @orders
  end

  def new
    @order = Order.new
  end
  
  def show
    @orders = @cart.orders
  end

  def create
    @order = @cart.orders.build(order_params)
    if @order.save
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def order_params
    params.require(:order).permit(:total_bill, :shipping_address, :payment_method)
  end

  def set_order
    @cart=current_user.cart
  end
end
