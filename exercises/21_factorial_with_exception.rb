def factorial(num)
  num == 0 ? 1 : (1..num).inject {|fact, curr| fact*curr}
end

begin
  num = gets.chomp.to_i
  raise "Negative number entered" if num<0
  puts factorial(num)
rescue StandardError => err
  puts err
end