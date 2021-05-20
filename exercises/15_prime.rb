def generate_prime(limit)
  result = 1.step(limit, 2).select do |num|
    divisor = 2
    while divisor <= num/2
      break if num%divisor == 0
      divisor += 1
    end
    
    divisor > num/2
  end

  return result
end

p generate_prime(gets.chomp.to_i)
