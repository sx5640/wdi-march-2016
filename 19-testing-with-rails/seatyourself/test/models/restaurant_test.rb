require 'test_helper'

class RestaurantTest < ActiveSupport::TestCase

  setup do
    @small = FactoryGirl.create :small_restaurant
    @large = FactoryGirl.create :large_restaurant
  end

  test 'restaurants exist' do
    assert_equal 2, Restaurant.all.size
  end

  test 'small restaurant has small capacity' do
    assert @small.capacity < 25
  end
end
