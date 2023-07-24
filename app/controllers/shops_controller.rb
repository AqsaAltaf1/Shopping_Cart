class ShopsController < ApplicationController
  before_action :set_shop, except: :index
  
  def index
    @shops = Shop.all
  end

  def show
    @shop = @user.shop
  end

  def new
  end

  def create
    @shop = @user.create_shop(shop_params)
    if @shop.save
      redirect_to user_path(@user)
    else
      render :new
    end
  end

  def edit
    @shop = @user.shop
  end

  def update
    @shop = @user.shop
    if @shop.update(shop_params)
      redirect_to user_shop_path(@user)
    else
      render :edit
    end
  end
  
  def destroy
    @shop = @user.shop
    @shop.destroy
    redirect_to shops_index_path(@user)
  end

  private

  def shop_params
    params.require(:shop).permit(:Name, :approval)
  end

  def set_shop
    @user = User.find(params[:user_id])
  end  

end
