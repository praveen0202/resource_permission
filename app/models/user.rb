class User < ApplicationRecord

  validates :first_name, :last_name, :email, :gender, presence: true

  belongs_to :company
  has_many :user_roles
  has_many :roles, through: :user_roles

end