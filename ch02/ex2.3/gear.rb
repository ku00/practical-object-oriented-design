# # Bad attern
# class Gear
#   def initialize(chainring, cog)
#     @chainring = chainring
#     @cog = cog
#   end

#   def ratio
#     @chainring / @cog.to_f
#   end
# end

# Good pattern
class Gear
  attr_reader :chainring, :cog

  def initialize(chainring, cog)
    @chainring = chainring
    @cog = cog
  end

  def ratio
    chainring / cog.to_f
  end

  # def cog
  #   @cog * unanticipated_adjustment_factor
  # end

  # def cog
  #   @cog * (foo? ? bar_adjustment : baz_adjustment)
  # end
end

p Gear.new(52, 11).ratio
p Gear.new(30, 27).ratio