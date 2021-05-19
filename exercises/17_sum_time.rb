require "time"
def sum_time(time_str_1, time_str_2)
  time_arr_1 = time_str_1.split(":").map {|el| el.to_i}
  time_arr_2 = time_str_2.split(":").map {|el| el.to_i}

  time_1 = Time.new(2021, 5, 1, time_arr_1[0], time_arr_1[1], time_arr_1[2])
  #convert time two to seconds
  seconds = time_arr_2[0]*60*60 + time_arr_2[1]*60 + time_arr_2[2]

  time_1 + seconds
end

#to validate 24 hour time string
def validate_time(time)
  time=~/^([01]?[0-9]|2[0-3]):[0-5][0-9]:[0-5][0-9]/
end

#generate a time string as per the question
def format_time(time)
  day = time.strftime("%e").to_i-1
  day>0 ? "#{day} day & #{time.strftime("%T")}" : time.strftime("%T");
end


time_str_1, time_str_2 = ARGV[0], ARGV[1]
if(validate_time(time_str_1) && validate_time(time_str_2))
  puts format_time(sum_time(time_str_1, time_str_2))
else
  puts "Invalid 24-hour time value"
end
