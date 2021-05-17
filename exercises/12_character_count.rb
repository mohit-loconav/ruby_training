def count_character(string)
  count = {
    :lowercase => 0,
    :uppercase => 0,
    :numeric => 0,
    :special => 0
  }

  string.each_char do |char|
    if char in "a".."z"
      count[:lowercase] += 1
    elsif char in "A".."Z" 
      count[:uppercase] += 1
    elsif char in "0".."9"
      count[:numeric] += 1
    else
      count[:special] += 1
    end
  end

  count
end

result = count_character gets.chomp.strip.gsub(/"/, "")

result.each do |name, value|
  puts "#{name.capitalize} characters = #{value}"
end