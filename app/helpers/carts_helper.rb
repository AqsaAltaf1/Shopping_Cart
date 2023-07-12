module CartsHelper
  def cart_count(cart)
    cart.items.pluck(:quantity).compact.sum
  end
end
