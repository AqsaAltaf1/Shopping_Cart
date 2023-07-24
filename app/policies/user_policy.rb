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
    @user.superadmin? || user == record
  end

  def update?
    edit?
  end

  def show?
    edit?
  end
end
