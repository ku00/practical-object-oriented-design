require 'forwardable'

class Parts
  extend Forwardable
  include Enumerable

  def_delegators :@parts, :size, :each

  def initialize(parts)
    @parts = parts
  end

  def spares
    select { |part| part.needs_spare }
  end
end