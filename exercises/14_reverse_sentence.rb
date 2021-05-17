def reverse_sentence(string)
  string.split(' ').reverse.join(" ")
end

input = gets.chomp.strip.gsub(/"/, "")
puts reverse_sentence(input)