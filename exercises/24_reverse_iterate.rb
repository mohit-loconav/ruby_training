class Array
  def reverse_iterate
    for i in 1..self.length
      yield self[-i]
    end
  end
end

input = gets.chomp.gsub(/"|\[|\]/, "")
arr = input.split(',')
arr.reverse_iterate { |el| puts el }