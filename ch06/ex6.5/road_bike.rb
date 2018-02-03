require_relative 'bicycle'

class RoadBike < Bicycle
  attr_reader :tape_color

  def post_initialize(args)
    @tape_color = args[:tape_color]
  end

  def default_tire_size
    '23'
  end

  def local_spares
    { tape_color: tape_color }
  end
end

road_bike = RoadBike.new(
  size: 'M',
  tape_color: 'red'
)

p road_bike
p road_bike.spares