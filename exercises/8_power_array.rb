def power_array(arr, exp)
  arr.map { |el| el**exp }
end

input = gets.chomp
if input==""
  puts "Please provide a valid input" 
else
  arr, exp = input.split(/ *" *| +/).select { |el| el!="" }
  arr = arr.gsub("[", "").split(/ *, */).map { |el| el.to_i }
  exp = exp.to_i

  print power_array(arr, exp)
end