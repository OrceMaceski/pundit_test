class BookPolicy < ApplicationPolicy
  def index?
    true
  end

  def show?
    # record.user == user
    true
  end

  def create?
    # user.present?
  end

  def edit?
    user.present? && (record.user == user || user.is_admin? || user.is_manager?)
  end

  def update?
    # user.present? && user == book.user
  end

  def destroy?
    # user.present? && user == book.user
  end

  private

  def book
    record
  end
  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    def resolve
      # scope.all
      scope.where(user_id: user.id)
    end
  end
end
