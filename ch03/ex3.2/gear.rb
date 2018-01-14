require_relative 'wheel'

# class Gear
#   attr_reader :chainring, :cog, :rim, :tire

#   def initialize(chainring, cog, rim, tire)
#     @chainring = chainring
#     @cog = cog
#     @rim = rim
#     @tire = tire
#   end

#   def gear_inches
#     # diameterを知っているオブジェクトがあればよい
#     ratio * Wheel.new(rim, tire).diameter
#   end

#   def ratio
#     chainring / cog.to_f
#   end
# end

# p Gear.new(52, 11, 26, 1.5).gear_inches

# class Gear
#   attr_reader :chainring, :cog, :wheel

#   def initialize(chainring, cog, wheel)
#     @chainring = chainring
#     @cog = cog
#     @wheel = wheel
#   end

#   def gear_inches
#     ratio * wheel.diameter
#   end

#   def ratio
#     chainring / cog.to_f
#   end
# end

# p Gear.new(52, 11, Wheel.new(26, 1.5)).gear_inches

# 依存性の注入ができないとき
# class Gear
#   attr_reader :chainring, :cog, :rim, :tire

#   def initialize(chainring, cog, rim, tire)
#     @chainring = chainring
#     @cog = cog
#     @wheel = Wheel.new(rim, tire)
#   end

#   def gear_inches
#     ratio * wheel.diameter
#   end

#   def ratio
#     chainring / cog.to_f
#   end
# end

# p Gear.new(52, 11, 26, 1.5).gear_inches


# class Gear
#   attr_reader :chainring, :cog, :rim, :tire

#   def initialize(chainring, cog, rim, tire)
#     @chainring = chainring
#     @cog = cog
#     @rim = rim
#     @tire = tire
#   end

#   def gear_inches
#     ratio * wheel.diameter
#   end

#   def ratio
#     chainring / cog.to_f
#   end

#   # 依存を隔離する
#   def wheel
#     @wheel ||= Wheel.new(rim, tire)
#   end
# end

# p Gear.new(52, 11, 26, 1.5).gear_inches

# class Gear
#   attr_reader :chainring, :cog, :rim, :tire

#   def initialize(chainring, cog, rim, tire)
#     @chainring = chainring
#     @cog = cog
#     @rim = rim
#     @tire = tire
#   end

#   def gear_inches
#     # something..
#     # 依存性をメソッドにしてカプセル化することで、selfに送るメッセージのみに依存するようにする
#     foo = ratio * diameter
#     # something..
#   end

#   def diameter
#     wheel.diameter
#   end

#   def ratio
#     chainring / cog.to_f
#   end

#   # 依存を隔離する
#   def wheel
#     @wheel ||= Wheel.new(rim, tire)
#   end
# end

# p Gear.new(52, 11, 26, 1.5).gear_inches

# class Gear
#   attr_reader :chainring, :cog, :wheel

#   def initialize(args)
#     @chainring = args[:chainring] || 40
#     # @chainring = args.fetch(:chainring, 40)
#     @cog = args[:cog] || 18
#     # @cog = args.fetch(:cog, 18)
#     @wheel = args[:wheel]
#   end

#   def gear_inches
#     ratio * wheel.diameter
#   end

#   def ratio
#     chainring / cog.to_f
#   end
# end

# gear = Gear.new(
#   chainring: 52,
#   cog: 11,
#   wheel: Wheel.new(26, 1.5)
# )
# p gear.gear_inches

class Gear
  attr_reader :chainring, :cog, :wheel

  def initialize(args)
    args = defaults.merge(args)
    @chainring = args[:chainring]
    @cog = args[:cog]
    @wheel = args[:wheel]
  end

  def defaults
    { chainring: 40, cog: 18 }
  end

  def gear_inches
    ratio * wheel.diameter
  end

  def ratio
    chainring / cog.to_f
  end
end

gear = Gear.new(
  chainring: 52,
  cog: 11,
  wheel: Wheel.new(26, 1.5)
)
p gear.gear_inches