def arr_hash(arr)
  hash = Hash.new()

  arr.sort_by! {|el| el.length}

  arr.each do |el|
    key = el.length
    if(hash[key])
      hash[key].push(el)
    else
      hash[key] = [el]
    end
  end
  hash
end

input = gets.chomp.strip.gsub(/"|'|\[|\]/, "")
arr = input.split(",")
puts arr_hash(arr)