require "time"

def sum_time(time_list)
  time_arr_1 = time_list[0].split(":").map {|el| el.to_i}
  time_1 = Time.parse(time_list[0])

  seconds = 0
  for time in time_list[1, time_list.length-1]
    time_arr = time.split(":").map {|el| el.to_i}
    seconds += time_arr[0]*60*60 + time_arr[1]*60 + time_arr[2]  
  end
  time_sum = time_1 + seconds
  days = time_sum.day-time_1.day
  
  days > 0 ? "#{days} day & #{time_sum.strftime("%T")}" : time_sum.strftime("%T");
end

#to validate 24 hour time string
def validate_time(time)
  time=~/^([01]?[0-9]|2[0-3]):[0-5][0-9]:[0-5][0-9]/
end

validate = true
for time in ARGV
  unless validate_time(time)
    validate = false
    break
  end
end

if(validate)
  puts sum_time(ARGV)
else
  puts "Invalid 24-hour time value"
end
