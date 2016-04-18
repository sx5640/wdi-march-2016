class Restaurant < ActiveRecord::Base

  has_many :reservations

  def available?(party_size)
    party_size > 0 && party_size <= capacity
  end

end
