require 'minitest/autorun'
require 'minitest/pride'
require_relative 'temperature.rb'

class TestTemperature < MiniTest::Test
 # tests go in here
 def test_f_to_c
   answer = f_to_c(32)
   assert_equal(0, answer)
 end

 def test_c_to_f
   answer = c_to_f(-40)
   assert_equal(-40, answer)
 end

end
