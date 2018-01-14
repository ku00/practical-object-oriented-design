# class Gear
#   attr_reader :chainring, :cog, :rim, :tire

#   def initialize(chainring, cog, rim, tire)
#     @chainring = chainring
#     @cog = cog
#     @rim = rim
#     @tire = tire
#   end

#   def ratio
#     chainring / cog.to_f
#   end

#   def gear_inches
#     # Bad pattern
#     # タイヤはリムのまわりを囲むので、直径を計算するためには2倍する
#     ratio * (rim + (tire*2))
#   end
# end

# class Gear
#   attr_reader :chainring, :cog, :rim, :tire

#   def initialize(chainring, cog, rim, tire)
#     @chainring = chainring
#     @cog = cog
#     @rim = rim
#     @tire = tire
#   end

#   def ratio
#     chainring / cog.to_f
#   end

#   def gear_inches
#     ratio * diameter
#   end

#   # 車輪の直径は Gear クラスで計算すべきではない
#   def diameter
#     rim + (tire*2)
#   end
# end

class Gear
  attr_reader :chainring, :cog, :wheel

  def initialize(chainring, cog, rim, tire)
    @chainring = chainring
    @cog = cog
    @wheel = Wheel.new(rim, tire)
  end

  def ratio
    chainring / cog.to_f
  end

  def gear_inches
    ratio * wheel.diameter
  end

  Wheel = Struct.new(:rim, :tire) do
    def diameter
      rim + (tire*2)
    end
  end
end

p Gear.new(52, 11, 26, 1.5).gear_inches
p Gear.new(52, 11, 24, 1.25).gear_inches

p Gear.new(52, 11).ratio