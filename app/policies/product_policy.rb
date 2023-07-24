class ProductPolicy < ApplicationPolicy
  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    # def resolve
    #   scope.all
    # end
  end

  def new?
    @user.superadmin? || @user.seller?
  end

  def create?
    new?
  end

  def edit?
    @shop = @user.shop
    @user.superadmin? || record.shop_id == @shop.id
  end

  def update?
    new?
  end

end
