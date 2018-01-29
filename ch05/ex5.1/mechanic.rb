class Mechanic
  # def prepare_bicycles(bicycles)
  #   bicycles.each do |bicycle|
  #     prepare_bicycle(bicycle)
  #   end
  # end

  def prepare_trip(trip)
    trip.bicycles.each do |bicycle|
      prepare_bicycle(bicycle)
    end
  end

  private

  def prepare_bicycle(bicycle)
    puts "Mechanic#prepare_bicycle(#{bicycle})"
  end
end