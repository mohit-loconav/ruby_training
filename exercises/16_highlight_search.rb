def highlight_search(string, search_text)
  result = {
    string: string.downcase.gsub(search_text, "(#{search_text})"),
    count: string.downcase.scan(search_text).length
  }
end

result = highlight_search(ARGV[0], ARGV[1])
puts result[:string]
puts "Total occurences found: #{result[:count]}"
