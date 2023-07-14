module OrdersHelper
  def total_price
    @cart=current_user.cart
    product_price=@cart.products.pluck(:price)
    item_quantity=@cart.items.pluck(:quantity)
    price_sum=item_quantity.zip(product_price).map{|x,y| x*y}
    price_sum.sum
  end
end
