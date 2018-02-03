require_relative 'parts'

class RoadBikeParts < Parts
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

require_relative 'bicycle'

road_bike = Bicycle.new(
  size: 'M',
  parts: RoadBikeParts.new(tape_color: 'red')
)

p road_bike
p road_bike.spares