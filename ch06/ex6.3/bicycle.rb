class Bicycle
  attr_reader :size, :tape_color

  def initialize(args)
    @size = args[:size]
    @tape_color = args[:tape_color]
  end

  def spares
    {
      chain: '10-speed',
      tipre_size: '23',
      tape_color: tape_color,
    }
  end
end