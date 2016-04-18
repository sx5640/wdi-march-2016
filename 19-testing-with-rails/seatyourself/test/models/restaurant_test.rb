require 'test_helper'

class RestaurantTest < ActiveSupport::TestCase

  setup do
    @restaurant = FactoryGirl.create :restaurant
    @time       = Time.now
  end

  test 'restaurant is available' do
    assert @restaurant.available?(10, @time)
  end

  test 'restaurant is not available' do
    assert_not @restaurant.available?(200, @time)
  end

  test 'restaurant is not available for a party size of 0' do
    assert_not @restaurant.available?(0, @time)
  end

  test 'restaurant is available given a reservation' do
    FactoryGirl.create :reservation, party_size: 10, restaurant: @restaurant
    assert @restaurant.available?(80, @time)
  end

  test 'restaurant is not available given a reservation' do
    FactoryGirl.create :reservation, party_size: 99, restaurant: @restaurant
    assert_not @restaurant.available?(10, @time)
  end

  test 'restaurant is available with reservations at different times' do
    FactoryGirl.create :reservation, party_size: 99, restaurant: @restaurant, time: @time

    next_time = @time + 1.hour
    assert @restaurant.available?(10, next_time)
  end

end
