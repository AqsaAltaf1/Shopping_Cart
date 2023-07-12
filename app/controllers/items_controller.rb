class ItemsController < ApplicationController
  
  def update_item
    @cart=current_user.cart
    @item =@cart.items.find(params[:id])
    if @item.update(quantity: params[:quantity])
      respond_to do |format|
        format.js 
      end
    end
  end
  
  private 
  def item_params
    params.require(:item).permit(:quantity)
  end
end