def arr_hash(arr)
  hash = Hash.new { |h,k| h[k] = [] }

  arr.sort_by! {|el| el.length}

  arr.each do |el|
    key = el.length
    hash[key] << el
  end
  hash
end

input = gets.chomp.strip.gsub(/"|'|\[|\]/, "")
arr = input.split(",")
puts arr_hash(arr)
