# # Bad pattern
# class ObscuringReferences
#   attr_reader :data

#   def initialize(data)
#     @data = data
#   end

#   def diameters
#     data.collect {|cell|
#       # 0はリム、1はタイヤ
#       cell[0] + (cell[1]*2)
#     }
#   end
# end

# class ObscuringReferences
#   attr_reader :wheels

#   def initialize(data)
#     @wheels = wheelify(data)
#   end

#   def diameters
#     wheels.collect {|wheel|
#       wheel.rim + (wheel.tire*2)
#     }
#   end

#   Wheel = Struct.new(:rim, :tire)
#   def wheelify(data)
#     data.collect {|cell|
#       Wheel.new(cell[0], cell[1])
#     }
#   end
# end

class ObscuringReferences
  attr_reader :wheels

  def initialize(data)
    @wheels = wheelify(data)
  end

  def diameters
    wheels.collect {|wheel| diameter(wheel) }
  end

  def diameter(wheel)
    wheel.rim + (wheel.tire*2)
  end

  Wheel = Struct.new(:rim, :tire)
  def wheelify(data)
    data.collect {|cell|
      Wheel.new(cell[0], cell[1])
    }
  end
end

data = [[622, 20], [622, 23], [559, 30], [559, 40]]
reference = ObscuringReferences.new(data)
p reference.diameters