require 'minitest/autorun'
require_relative 'wheel'

class TestWheel < Minitest::Test
  def test_calculates_diameter
    wheel = Wheel.new(26, 1.5)
    assert_in_delta(29, wheel.diameter, 0.01)
  end
end