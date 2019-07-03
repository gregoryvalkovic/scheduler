module EventsHelper
  Days = {1 => "Monday", 2 => "Tuesday", 3 => "Wednesday", 4 => "Thursday", 5 => "Friday", 6 => "Saturday", 7 => "Sunday"}

  def time_label (num)
    if num < 10
      "0#{num}:00"
    else
      "#{num}:00"
    end
  end

  def day_iterator
    Days.each do |k, day|
      yield k, day
    end
  end

  def select_days_options
    options = []
    Days.each do |value, day|
      options << [day, value]
    end
    options
  end

  def select_times_options
    options = []
    (0..23).each do |n|
      options << [time_label(n), n]
    end
    options
  end

  def time_slot_type (times, day, time_slot)
    times.include?([day, time_slot]) ? "closed" : "open"
  end
end
