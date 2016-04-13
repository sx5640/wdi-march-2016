class User < ActiveRecord::Base
  has_secure_password

  has_many :comments, inverse_of: :user

  validates :first_name, :last_name, :email, presence: { message: "gotta be present, yo!"}
  validates :email, uniqueness: { message: "Email's gotta be unique, yo!"}
  validates :password, length: { minimum: 6 }

  def full_name
    "#{first_name} #{last_name}"
  end
end
