def censor_vowel(string)
  string.gsub(/[aeiou]/, "*")
end

puts "Enter the string"
input_string = gets.chomp
if(input_string == "")
  puts "Please provide an input"
else 
  puts censor_vowel(input_string)
end