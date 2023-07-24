class UserPolicy < ApplicationPolicy
  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    # def resolve
    #   scope.all
    # end
  end

  def index?
    @user.superadmin?
  end

  def edit?
    update?
  end

  def update?
    @user.superadmin?
  end

  def show?
    # @user= User.where(user_id: @user)
  end
end
