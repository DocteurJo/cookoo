class OrderPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def index?
    (@user.class == Cook)
  end

  def show?
    (@user == @record.user)
  end

  def create?
    true
  end

  def review_save?
    true
  end
end
