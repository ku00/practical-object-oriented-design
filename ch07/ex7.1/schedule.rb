class Schedule
  def scheduled?(schedulable, start_date, end_date)
    puts "This #{schedulable.class} is not scheduled\nbetween #{start_date} and #{end_date}"

    false
  end
end