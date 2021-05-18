class ToggleCase
  attr_reader :msg

  def initialize(msg)
    @msg = msg
  end

  def to_s
    msg.split("").map do |char|
      if(char=~/[a-z]/) 
        char.upcase
      elsif(char=~/[A-Z]/) 
        char.downcase
      else 
        char
      end
    end.join()
  end
end

str = ToggleCase.new(gets.chomp)
puts str
