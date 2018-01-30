# class Bicycle
#   attr_reader :size, :tape_color

#   def initialize(args)
#     @size = args[:size]
#     @tape_color = args[:tape_color]
#   end

#   def spares
#     {
#       chain: '10-speed',
#       tipre_size: '23',
#       tape_color: tape_color,
#     }
#   end
# end

# bike = Bicycle.new(
#   size: 'M',
#   tape_color: 'red'
# )

# p bike.size
# p bike.spares

class Bicycle
  attr_reader :style, :size, :tape_color, :front_shock, :rear_shock

  def initialize(args)
    @style = args[:style]
    @size = args[:size]
    @tape_color = args[:tape_color]
    @front_shock = args[:front_shock]
    @rear_shock = args[:rear_shock]
  end

  def spares
    if style == :road
      {
        chain: '10-speed',
        tipre_size: '23',
        tape_color: tape_color,
      }
    else
      {
        chain: '10-speed',
        tipre_size: '2.1',
        rear_shock: rear_shock,
      }
    end
  end
end

bike = Bicycle.new(
  style: :mountain,
  size: 'S',
  front_shock: 'Manitou',
  rear_shock: 'Fox'
)

p bike.spares