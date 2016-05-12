class User < ActiveRecord::Base
  authenticates_with_sorcery!

  validates :name, :email, :presence => true
  validates :email, :uniqueness => true

  has_many :authentications, dependent: :destroy
  has_many :reservations

  accepts_nested_attributes_for :authentications
end
