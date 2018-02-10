require 'minitest/autorun'
require_relative 'road_bike'
require_relative 'test_bicycle_interface'
require_relative 'test_bicycle_subclass'

class TestRoadBike < MiniTest::Test
  include TestBicycleInterface
  include TestBicycleSubclass

  def setup
    @road_bike = @object = RoadBike.new
  end
end