class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  belongs_to :role

  enum manager: [:regular, :admin]

  def is_regular?
    role.name == 'regular' # with role model
  end

  def is_admin?
    role.name == 'admin' # with role model
  end

  def is_manager?
    manager == :admin # with manager(role) attribute and enum
  end
end
