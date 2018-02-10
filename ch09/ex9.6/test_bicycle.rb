require 'minitest/autorun'
require_relative 'bicycle'
require_relative 'road_bike'
require_relative 'test_bicycle_interface'

class TestBicycle < MiniTest::Test
  include TestBicycleInterface

  def setup
    @bike = @object = Bicycle.new({ tire_size: 0 })
  end
end