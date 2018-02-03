require_relative 'schedule'

class Bicycle
  attr_reader :schedule, :size, :chain, :tire_size

  def initialize(args={})
    @schedule = args[:schedule] || Schedule.new
  end

  def schedulable?(start_date, end_date)
    !scheduled?(start_date - lead_days, end_date)
  end

  def scheduled?(start_date, end_date)
    schedule.scheduled?(self, start_date, end_date)
  end

  def lead_days
    1
  end
end

require 'date'
starting = Date.parse("2018/02/02")
ending = Date.parse("2018/02/09")

bike = Bicycle.new
p bike.schedulable?(starting, ending)
