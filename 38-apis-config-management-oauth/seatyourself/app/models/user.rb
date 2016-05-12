class User < ActiveRecord::Base
  authenticates_with_sorcery!
  has_secure_password

  validates :name, :email, :presence => true
  validates :email, :uniqueness => true

  has_many :reservations
end
