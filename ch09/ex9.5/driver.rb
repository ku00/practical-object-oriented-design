class Driver
  def prepare_trip(trip)
    vehicle = trip.vehicle
    gas_up(vehicle)
    fill_water_tank(vehicle)
  end

  private

  def gas_up(vehicle)
    puts "Driver#ges_up(#{vehicle})"
  end

  def fill_water_tank(vehicle)
    puts "Driver#fill_water_tank(#{vehicle})"
  end
end
