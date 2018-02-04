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

require_relative 'parts_factory'

# Create RoadBike

road_config = [
  ['chain', '10-speed'],
  ['tire_size', '23'],
  ['tape_color', 'red'],
]

road_bike = Bicycle.new(
  size: 'L',
  parts: PartsFactory.build(road_config)
)

p road_bike.size
road_bike.spares.each { |spare| puts spare.inspect }

# Create MountainBike

mountain_config = [
  ['chain', '10-speed'],
  ['tire_size', '2.1'],
  ['front_shock', 'Manitou', false],
  ['rear_shock', 'Fox'],
]

mountain_bike = Bicycle.new(
  size: 'M',
  parts: PartsFactory.build(mountain_config)
)

p mountain_bike.size
mountain_bike.spares.each { |spare| puts spare.inspect }