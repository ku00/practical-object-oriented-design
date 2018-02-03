require_relative 'schedulable'

class Bicycle
  include Schedulable

  attr_reader :size, :chain, :tire_size

  def lead_days
    1
  end
end

require 'date'
starting = Date.parse("2018/02/02")
ending = Date.parse("2018/02/09")

bike = Bicycle.new
p bike.schedulable?(starting, ending)
