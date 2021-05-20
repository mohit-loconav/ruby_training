require "time"

def sum_time(time_str_1, time_str_2)
  time_arr_2 = time_str_2.split(":").map {|el| el.to_i}

  time_1 = Time.parse(time_str_1);
  #convert time two to seconds
  seconds = time_arr_2[0]*60*60 + time_arr_2[1]*60 + time_arr_2[2]
  sum = time_1 + seconds
  days = sum.day-time_1.day

  days > 0 ? "#{days} day & #{sum.strftime("%T")}" : sum.strftime("%T");
end

#to validate 24 hour time string
def validate_time(time)
  puts time=~/^([01]?[0-9]|2[0-3]):[0-5][0-9]:[0-5][0-9]/
end

time_str_1, time_str_2 = ARGV[0], ARGV[1]
if(validate_time(time_str_1) && validate_time(time_str_2))
  sum_time(time_str_1, time_str_2)
else
  puts "Invalid 24-hour time value"
end
