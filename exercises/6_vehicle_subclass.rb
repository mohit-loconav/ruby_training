class Vehicle
  attr_accessor :price
  
  def initialize(name, price)
    @name = name
    @price = price
  end
end

class Bike < Vehicle
  def initialize(name, price, dealer)
    super(name, price)
    @dealer = dealer
    @percent_price_increase = 0.0
  end

  def to_s
    str = ""
    str += "After #{@percent_price_increase}% hike in price:\n"
    str += "Bike name: #{@name}\n"
    str += "Bike Price: #{@price + @price*@percent_price_increase/100}\n"
    str += "Bike Dealer: #{@dealer}\n"
  end

  def price_increase(ppi)
    @percent_price_increase = ppi.to_f
  end
end

query =  gets.chomp
name, price, dealer, ppi = query.split(/"| ([0-9]+)/).select {|el| (el=~/^ *$/) == nil}
puts name, price, dealer, ppi

bike = Bike.new(name, price.to_i, dealer)

bike.price_increase ppi

puts bike