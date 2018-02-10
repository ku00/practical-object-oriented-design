require 'minitest/autorun'
require_relative 'road_bike'
require_relative 'test_bicycle_interface'
require_relative 'test_bicycle_subclass'

class TestRoadBike < MiniTest::Test
  include TestBicycleInterface
  include TestBicycleSubclass

  def setup
    @road_bike = @object = RoadBike.new(tape_color: 'red')
  end

  def test_puts_tape_color_in_local_spares
    assert_equal('red', @road_bike.local_spares[:tape_color])
  end
end