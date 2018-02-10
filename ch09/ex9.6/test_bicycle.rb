require 'minitest/autorun'
require_relative 'bicycle'
require_relative 'test_bicycle_interface'
require_relative 'test_bicycle_subclass'

class StubbedBike < Bicycle
  def default_tire_size
    0
  end

  def local_spares
    { saddle: 'painful' }
  end
end

class TestStubbedBike < MiniTest::Test
  include TestBicycleSubclass

  def setup
    @object = StubbedBike.new
  end
end

class TestBicycle < MiniTest::Test
  include TestBicycleInterface

  def setup
    @bike = @object = Bicycle.new({ tire_size: 0 })
    @stubbed_bike = StubbedBike.new
  end

  def test_forces_subclasses_to_implement_default_tire_size
    assert_raises(NotImplementedError) { @bike.default_tire_size }
  end

  def test_includes_local_spares_in_spares
    assert_equal(
      @stubbed_bike.spares,
      {
        tire_size: 0,
        chain: '10-speed',
        saddle: 'painful'
      }
    )
  end
end