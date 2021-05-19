class Product
  attr_accessor :id, :name, :price, :sales_tax, :import_tax
  @@total = 0
  @@objects = []

  def initialize(name, price, sales_tax, import_tax)
    @id = @@total
    @name = name
    @price = price
    @sales_tax = sales_tax
    @import_tax = import_tax
    @@total += 1
    @@objects << self
  end

  def self.display_all
    puts @@objects.map { |el| "price of #{el.name} is #{el.price} with #{el.sales_tax}% sales_tax and #{el.import_tax}% import tax" }
  end

  def self.generate_total
    @@objects.reduce(0) { |sum, product| sum + product.price*(1 + (product.sales_tax+product.import_tax)/100.0) }
  end
end

input = "y"
until input == "n" do
  puts "Name of the product:"
  name = gets.chomp
  puts "Imported?:"
  import_tax = ["yes", "y"].include?(gets.chomp.downcase) ? 5 : 0
  puts "Exempted from sales tax?"
  sales_tax = ["no", "n"].include?(gets.chomp.downcase) ? 10 : 0
  puts "Price:"
  price = gets.chomp.to_i
  puts "#{name}: #{sales_tax} #{import_tax}"
  puts "Do you want to add more items to your list(y/n)"
  Product.new(name, price, sales_tax, import_tax)
  input = gets.chomp.downcase
end

puts "Products available:"
Product::display_all
puts
puts "Total price of all products with respective taxes is: #{Product.generate_total}"
