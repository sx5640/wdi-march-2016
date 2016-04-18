class Restaurant < ActiveRecord::Base

  has_many :reservations

  def available?(party_size)
    available_capacity = capacity - reservations.sum(:party_size)

    party_size > 0 && party_size <= available_capacity
  end

end
