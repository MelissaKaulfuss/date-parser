require 'pry'
class DateComparator

SECONDS_PER_DAY = 86400

  def self.date_difference(date_one, date_two)
    "#{(date_two.timestamp - date_one.timestamp) / SECONDS_PER_DAY} days"
  end
end