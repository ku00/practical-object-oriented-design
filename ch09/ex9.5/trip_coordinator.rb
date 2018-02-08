class TripCoordinator
  def prepare_trip(trip)
    buy_food(trip.customers)
  end

  private

  def buy_food(customers)
    puts "TripCoordinator#buy_food(#{customers})"
  end
end