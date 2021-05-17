def calculate_freq(string)
  freq_hash = {}

  string.split("").each do |word|
    if word =~ /[a-zA-Z]/
      if freq_hash[word]
        freq_hash[word] += 1
      else
        freq_hash[word] = 1
      end
    end
  end
  
  freq_hash
end

puts "Enter the string"
input_string = gets.chomp
if(input_string == "")
  puts "Please provide an input"
else 
  puts calculate_freq(input_string)
end