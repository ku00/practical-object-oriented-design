class Trip
  attr_reader :bicycles, :customers, :vehicle

  def initialize(bicycles, customers=nil, vehicle=nil)
    @bicycles = bicycles
    @customers = customers
    @vehicle = vehicle
  end

  # def prepare(mechanic)
  #   mechanic.prepare_bicycles(bicycles)
  # end

  # def prepare(preparers)
  #   preparers.each do |preparer|
  #     case preparer
  #     when Mechanic
  #       preparer.prepare_bicycles(bicycles)
  #     when TripCoordinator
  #       preparer.buy_food(customers)
  #     when Driver
  #       preparer.fill_water_tank(vehicle)
  #     end
  #   end
  # end

  def prepare(preparers)
    preparers.each do |preparer|
      preparer.prepare_trip(self)
    end
  end
end

require_relative 'mechanic'
require_relative 'trip_coordinator'
require_relative 'driver'

trip = Trip.new(
  ["LOOK", "TIME", "DE ROSA"],
  ["taro", "jiro", "goro"],
  "yoshiko"
)
mechanic = Mechanic.new

# trip.prepare(mechanic)

trip_coordinator = TripCoordinator.new
driver = Driver.new

trip.prepare([
  mechanic,
  trip_coordinator,
  driver
])