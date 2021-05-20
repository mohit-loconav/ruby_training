class String
  def pallindrome?
    self == reverse
  end
end

str = gets.chomp
if str.pallindrome?
  puts "Input string is a pallindrome"
else
  puts "Input string is not a pallindrome"
end
