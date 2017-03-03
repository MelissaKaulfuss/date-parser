module DateDifferenceCalculator


  if ARGV.length == 0x
    puts "Enter 2 dates to calculate the difference in DD-MM-YYYY format:"
    line = $stdin.gets.chomp
    date1, date2 = line.split(" ")
    validate_date_format(date1)
    validate_date_format(date2)

    DateCompator.date_difference(date1, date2)

  else
    file = ARGV
    puts "Reading from the file: #{file}"
  end

  def validate_date_format(date_str)
   date = DateValidator.validate(date_str)
  end

end
