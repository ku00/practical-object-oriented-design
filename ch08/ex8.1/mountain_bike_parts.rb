require_relative 'parts'

class MountainBikeParts < Parts
  attr_reader :front_shock, :rear_shock

  def post_initialize(args)
    @front_shock = args[:front_shock]
    @rear_shock = args[:rear_shock]
  end

  def default_tire_size
    '2.1'
  end

  def local_spares
    { rear_shock: rear_shock }
  end
end

require_relative 'bicycle'

mountain_bike = Bicycle.new(
  size: 'S',
  parts: MountainBikeParts.new(
    front_shock: 'Manitou',
    rear_shock: 'Fox'
  )
)

p mountain_bike
p mountain_bike.spares