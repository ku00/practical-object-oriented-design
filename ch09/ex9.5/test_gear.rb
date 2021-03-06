require 'minitest/autorun'
require_relative 'gear'
require_relative 'test_diameterizable_interface'

class DiameterDouble
  def width
    10
  end
end

class TestDiameterDouble < Minitest::Test
  include TestDiameterizableInterface

  def setup
    @object = DiameterDouble.new
  end
end

class TestGear < Minitest::Test
  def setup
    @observer = Minitest::Mock.new
    @gear = Gear.new(
      chainring: 52,
      cog: 11,
      wheel: DiameterDouble.new,
      observer: @observer
    )
  end

  def test_calculates_gear_inches
    assert_in_delta(47.27, @gear.gear_inches, 0.01)
  end

  def test_notifies_observers_when_cogs_change
    @observer.expect(:changed, true, [52, 27])
    @gear.set_cog(27)
    @observer.verify
  end

  def test_notifies_observers_when_chainrings_change
    @observer.expect(:changed, true, [42, 11])
    @gear.set_chainring(42)
    @observer.verify
  end
end