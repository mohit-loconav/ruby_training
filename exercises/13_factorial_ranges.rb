def factorial(num)
  (1..num).reduce(:*) || 1
end

puts factorial(gets.chomp.to_i)
