class DateLibrary

LEAP_YEAR_DAYS = 366
STANDARD_YEAR_DAYS = 365
SECONDS_PER_DAY = 86400

attr_reader :date

def initialize(date)
  @date = date
end

  def year
    date.split("-").last.to_i
  end

  def month
    date.split("-").at(1).to_i
  end

  def day
    date.split("-").first.to_i
  end

  def self.leap_year?(year)
    (year % 400 == 0) || (year % 100 != 0 && year % 4 == 0)
  end

  def timestamp
    anchor_date = DateLibrary.new('01-01-1900')
    day_count_by_month = [ 0, 31, 59, 90, 120, 151, 181, 212, 243, 273, 304, 334, 365 ]

    days = 0
    # years = year - anchor_date.year
    start_year = anchor_date.year

    while(start_year < year)
      if DateLibrary.leap_year?(start_year)
        days += LEAP_YEAR_DAYS
      else
        days += STANDARD_YEAR_DAYS
      end
      start_year += 1
    end

    previous_month = month - 1
    days += day_count_by_month[previous_month]
    days += day - 1

    if DateLibrary.leap_year?(year) &&  month > 2
      days  += 1
    end
    days * SECONDS_PER_DAY
  end
end

