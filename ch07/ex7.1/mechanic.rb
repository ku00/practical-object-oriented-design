require_relative 'schedulable'

class Mechanic
  include Schedulable

  def prepare_trip(trip)
    trip.bicycles.each do |bicycle|
      prepare_bicycle(bicycle)
    end
  end

  def lead_days
    4
  end

  private

  def prepare_bicycle(bicycle)
    puts "Mechanic#prepare_bicycle(#{bicycle})"
  end
end

require 'date'
starting = Date.parse("2018/02/02")
ending = Date.parse("2018/02/09")

mechanic = Mechanic.new
p mechanic.schedulable?(starting, ending)