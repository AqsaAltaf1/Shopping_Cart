class ShopPolicy < ApplicationPolicy
  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    # def resolve
    #   scope.all
    # end
  end

  def index?
    @user.superadmin?
  end

  def show?
    @user.superadmin? || record.user_id == user.id
  end

  def new?
    @user.seller?
  end

  def create?
    new? 
  end

  def edit?
    @user.superadmin? || record.user_id == user.id
  end

  def update?
    edit?
  end
end
