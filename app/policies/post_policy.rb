class PostPolicy < ApplicationPolicy
  class Scope < Scope
    def initialize(user, scope)
      @user = user
      @scope = scope
    end

    def resolve
      if user.role.name == "Admin"
        scope.all
      else
        scope.where.not(content: "")
      end
    end
  end

  def index?
    true
  end

  def create?
    return true if user.present? && user.role.name == "Admin"
  end

  def destroy?
    return true if user.present? && user.role.name == "Admin"
  end

  private

  def post
    record
  end
end
