class User < ApplicationRecord
  has_secure_password

  # verify that email field is not blank
  validates :email, presence: true, uniqueness: true
  validates :username, presence: true, uniqueness: true
end
