class Bicycle
  attr_reader :size, :parts

  def initialize(args={})
    @size = args[:size]
    @parts = args[:parts]
  end

  def spares
    parts.spares
  end
end

require_relative 'parts'
require_relative 'part'

# Create RoadBike

chain = Part.new(
  name: 'chain',
  description: '10-speed'
)

road_tire = Part.new(
  name: 'tire_size',
  description: '23'
)

tape = Part.new(
  name: 'tape_color',
  description: 'red'
)

road_bike_parts = Parts.new([chain, road_tire, tape])
road_bike = Bicycle.new(
  size: 'L',
  parts: road_bike_parts
)

p road_bike.size
road_bike.spares.each { |spare| puts spare.inspect }

# Create MountainBike

mountain_tire = Part.new(
  name: 'tire_size',
  description: '2.1'
)

rear_shock = Part.new(
  name: 'rear_shock',
  description: 'Fox'
)

front_shock = Part.new(
  name: 'front_shock',
  description: 'Manitou',
  needs_spare: false
)

mountain_bike_parts = Parts.new(
  [
    chain,
    mountain_tire,
    front_shock,
    rear_shock,
  ]
)
mountain_bike = Bicycle.new(
  size: 'M',
  parts: mountain_bike_parts
)

p mountain_bike.size
# mountain_bike.spares.each { |spare| puts spare.inspect }
p mountain_bike.spares.size
p mountain_bike.parts.size