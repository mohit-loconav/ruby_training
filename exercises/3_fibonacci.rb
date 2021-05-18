def generate_fibonacci(max)
  num1 = 0
  num2 = 1
  
  list = []
  while num2<=max
    num2, num1 = num2+num1, num2
    list << num1
  end

  yield(list)
end

puts "Enter max limit"
input_string = gets.chomp
if input_string == ""
  puts "Please provide an input"
elsif input_string =~ /^[0-9]*$/
  puts generate_fibonacci(input_string.to_i) {|num| print "result is #{num}"}
else 
  puts "wrong input"
end
