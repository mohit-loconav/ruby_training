def sum_time(time_list)
  time_arr_1 = time_list[0].split(":").map {|el| el.to_i}
  time_sum = Time.new(2021, 5, 1, time_arr_1[0], time_arr_1[1], time_arr_1[2])

  for time in time_list[1, time_list.length-1]
    time_arr = time.split(":").map {|el| el.to_i}
    seconds = time_arr[0]*60*60 + time_arr[1]*60 + time_arr[2]  
    time_sum += seconds
  end

  time_sum
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


validate = true
for time in ARGV
  if validate_time(time) == false
    validate = false
    break
  end
end

if(validate)
  puts format_time(sum_time(ARGV))
else
  puts "Invalid 24-hour time value"
end
