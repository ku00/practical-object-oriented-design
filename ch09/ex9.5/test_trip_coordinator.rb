require 'minitest/autorun'
require_relative 'test_preparer_interface'
require_relative 'trip_coordinator'
require_relative 'mechanic'
require_relative 'driver'

class TestTripCoordinator < Minitest::Test
  include TestPreparerInterface

  def setup
    @trip_coordinator = @object = TripCoordinator.new
  end
end

class TestMechanic < Minitest::Test
  include TestPreparerInterface

  def setup
    @mechanic = @object = Mechanic.new
  end
end

class TestDriver < Minitest::Test
  include TestPreparerInterface

  def setup
    @driver = @object = Driver.new
  end
end