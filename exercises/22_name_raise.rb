class Name
  def initialize(firstname, lastname)
    if !firstname || !lastname
      raise "Names cannot be empty"
    elsif (firstname[0] =~ /[A-Z]/) == nil
      raise "First name should begin with a capital letter"
    end

    @firstname = firstname
    @lastname = lastname
  end

  def say_hello
    puts "Hello, #{@firstname} #{@lastname}"
  end
end

begin
  input = gets.chomp
  raise "Please provide an input" if input == ""
  firstname, lastname = input.split
  obj = Name.new(firstname, lastname)
  obj.say_hello
rescue StandardError => err
  puts err
end