require 'test_helper'

class RestaurantTest < ActiveSupport::TestCase

  setup do
    @restaurant = FactoryGirl.create :restaurant
  end

  test 'restaurant is available' do
    assert @restaurant.available?(10)
  end

  test 'restaurant is not available' do
    assert_not @restaurant.available?(200)
  end

  test 'restaurant is not available for a party size of 0' do
    assert_not @restaurant.available?(0)
  end

  test 'restaurant is available given a reservation' do
    FactoryGirl.create :reservation, party_size: 10, restaurant: @restaurant
    assert @restaurant.available?(80)
  end

  test 'restaurant is not available given a reservation' do
    FactoryGirl.create :reservation, party_size: 99, restaurant: @restaurant
    assert_not @restaurant.available?(10)
  end

end
