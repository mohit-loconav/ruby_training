class Array
  def reverse_iterate(&block)
    for i in 1..self.length
      block.call self[-i]
    end
  end
end

input = gets.chomp.gsub(/"|\[|\]/, "")
arr = input.split(',')
arr.reverse_iterate { |el| puts el }