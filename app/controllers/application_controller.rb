class ApplicationController < ActionController::Base
  skip_before_action :verify_authenticity_token
  before_action :cart_user
  def cart_user
    if current_user.present?
      if current_user.cart.nil?
        current_user.create_cart
        @cart=current_user.cart
      end
    end
  end
end
