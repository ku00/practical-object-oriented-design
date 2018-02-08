require 'minitest/autorun'
require_relative 'trip'

class TestTrip < Minitest::Test
  def test_requests_trip_preparation
    @preparer = Minitest::Mock.new
    @trip = Trip.new(["LOOK", "TIME", "DE ROSA"])
    @preparer.expect(:prepare_trip, nil, [@trip])

    @trip.prepare([@preparer])
    @preparer.verify
  end
end