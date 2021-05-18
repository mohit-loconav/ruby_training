class InterestDiff
  def initialize(p, t)
    @principal = p
    @time_in_years = t.to_i
    @time_fraction = (t% @time_in_years).round(3)
    @rate = 10
  end

  def calculate_difference
    compound = simple = @principal

    #calculating compound interest
    @time_in_years = @time_in_years || 0
    @time_in_years.times { compound += compound*@rate/100 }
    compound += compound*@time_fraction*@rate/100

    #calculating simple interest
    simple += (@principal*@rate/100)*(@time_in_years+@time_fraction)

    (compound-simple).round(2)
  end
end


obj = InterestDiff.new(ARGV[0].to_f, ARGV[1].to_f)

puts "Interest difference= #{obj.calculate_difference}"
