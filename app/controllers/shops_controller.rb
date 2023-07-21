class ShopsController < ApplicationController
  before_action :set_shop, except: %i[index new create]
  
  def index
    @shops = Shop.order(:id)
  end

  def show
    @products = @shop.products
  end

  def new
    @user = current_user
  end

  def create
    @shop = current_user.create_shop(shop_params)
    if @shop.save
      redirect_to user_path(current_user)
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @shop.update(shop_params)
      redirect_to shop_path(@shop)
    else
      render :edit
    end
  end
  
  def destroy
    @shop.destroy
    redirect_to root_path
  end

  private

  def shop_params
    params.require(:shop).permit(:name, :approval)
  end

  def set_shop
    @shop = Shop.find(params[:id])
  end  

end
