require_relative 'wheel'

class Gear
  attr_reader :chainring, :cog, :wheel

  def initialize(chainring, cog, wheel=nil)
    @chainring = chainring
    @cog = cog
    @wheel = wheel
  end

  def ratio
    chainring / cog.to_f
  end

  def gear_inches
    ratio * wheel.diameter
  end
end

wheel = Wheel.new(26, 1.5)
p wheel.circumference

p Gear.new(52, 11, wheel).gear_inches
p Gear.new(52, 11).ratio