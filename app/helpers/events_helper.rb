module EventsHelper

  def time_label num
    if num < 10
      "0#{num}:00"
    else
      "#{num}:00"
    end
  end

  def day_iterator
    days = %w(Monday Tuesday Wednesday Thursday Friday Saturday Sunday)
    days.each do |day|
      yield day
    end
  end
end
