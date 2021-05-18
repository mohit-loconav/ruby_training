def factorial(num)
  num== 0 ? 1 : (1..num).inject {|fact, curr| fact*curr}
end

puts factorial(gets.chomp.to_i)