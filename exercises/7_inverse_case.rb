class ToggleCase
  attr_reader :msg

  def initialize(msg)
    @msg = msg
  end

  def to_s
    toggle_case_char = Proc.new do |char|
      if(char=~/[a-z]/) 
        char.upcase
      elsif(char=~/[A-Z]/) 
        char.downcase
      else 
        char
      end
    end

    msg.split("").map(&toggle_case_char).join()
  end
end

str = ToggleCase.new(gets.chomp)
puts str
