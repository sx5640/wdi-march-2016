class Restaurant < ActiveRecord::Base

  has_many :reservations

  def available?(party_size, time)
    party_size > 0 && party_size <= available_capacity(time)
  end

  private

  def available_capacity(time)
    capacity - reservations.where(time: time.beginning_of_hour..time.end_of_hour).sum(:party_size)

    # Alternative expression of the time range, also works
    #available_capacity = capacity - reservations.where('time > ? and time < ?', time.beginning_of_hour, time.end_of_hour).sum(:party_size)

  end

end
