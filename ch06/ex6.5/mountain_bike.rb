require_relative 'bicycle'

class MountainBike < Bicycle
  def default_tire_size
    '2.1'
  end

  def spares
    super.merge({ rear_shock: rear_shock })
  end
end

mountain_bike = MountainBike.new(
  size: 'S',
  front_shock: 'Manitou',
  rear_shock: 'Fox'
)

p mountain_bike.size
p mountain_bike.tire_size
p mountain_bike.chain
