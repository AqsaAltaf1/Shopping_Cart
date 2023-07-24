class CategoryPolicy < ApplicationPolicy
  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    # def resolve
    #   scope.all
    # end
  end

  def index?
    @user.superadmin?
  end

  def new?
    index?
  end 

  def create?
    new?
  end

  def edit?
    index?
  end

  def update?
    edit?
  end
  
end
