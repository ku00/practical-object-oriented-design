require 'minitest/autorun'
require_relative 'wheel'
require_relative 'test_diameterizable_interface'

class TestWheel < Minitest::Test
  include TestDiameterizableInterface

  def setup
    @wheel = @object = Wheel.new(26, 1.5)
  end

  def test_calculates_diameter
    assert_in_delta(29, @wheel.width, 0.01)
  end
end