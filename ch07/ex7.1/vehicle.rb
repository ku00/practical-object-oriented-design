require_relative 'schedulable'

class Vehicle
  include Schedulable

  def lead_days
    3
  end
end

require 'date'
starting = Date.parse("2018/02/02")
ending = Date.parse("2018/02/09")

vehicle = Vehicle.new
p vehicle.schedulable?(starting, ending)