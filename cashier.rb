require_relative "class_cashier.rb"

transaction = Cashier.new  
puts "What is the amount due?"
due = gets.chomp
unless transaction.response_check(due)
  exit
end
due = due.to_f
puts "What is the amount tendered?"
tendered = gets.chomp
unless transaction.response_check(tendered)
  exit
end
tendered = tendered.to_f
transaction.calculate(due, tendered)
transaction.output(due, tendered)