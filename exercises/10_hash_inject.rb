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

def group(hash)
  hash.inject({}) do |acc, curr|
    if curr[0]%2 == 0
      if acc[:even]
        acc[:even] << curr[1]
      else
        acc[:even] = [curr[1]]
      end
    else
      if acc[:odd]
        acc[:odd] << curr[1]
      else
        acc[:odd] = [curr[1]]
      end
    end
    acc
  end
end

input = gets.chomp.strip.gsub(/"|'|\[|\]/, "")
arr = input.split(",")
puts group(arr_hash(arr))
