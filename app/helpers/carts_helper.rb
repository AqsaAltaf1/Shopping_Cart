module CartsHelper
  def cart_count(cart)
    cart.items.pluck(:quantity).compact.sum
  end

  def total_price(cart)
    product_price=cart.products.pluck(:Price)
    item_quantity=cart.items.pluck(:quantity)
    price_sum=item_quantity.zip(product_price).map{|x,y| x*y}
    price_sum.sum
  end
end
