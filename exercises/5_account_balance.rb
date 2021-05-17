class Account
  attr_reader :name, :account_no, :balance
  attr_accessor :name, :balance

  def initialize(account_no, name, balance)
    @account_no = account_no
    @name = name
    @balance = balance
  end

  def deposit(amount)
    @balance += amount
  end

  def withdraw(amount)
    @balance -= amount
  end

  def display
    puts "Account Number: #{@account_no}"
    puts "Account holder name: #{@name}"
    puts "Account balance: #{@balance}"
  end
end

def transfer(sender, receiver, amount)
  sender.withdraw(amount)
  receiver.deposit(amount)
end

puts "Enter the query"
query = gets.chomp

acc1, acc2, transfer = query.split(" ")

acc1 = Account.new(1, acc1.split(":")[0].gsub("\"", ""), acc1.split(":")[1].to_i)
acc2 = Account.new(2, acc2.split(":")[0].gsub("\"", ""), acc2.split(":")[1].to_i)

transfer_amount = transfer.split(":")[1].to_i

transfer(acc1, acc2, transfer_amount)

acc1.display
puts ""
acc2.display