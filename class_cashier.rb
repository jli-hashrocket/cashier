class Cashier
  def calculate(due, tendered)
    diff = tendered - due
    return diff.round(2).abs
  end

  def response_check(response)
    if response.match(/[A-Za-z]/)
     puts "WARNING: Invalid currency detected! Exiting..."
     return false
    else
     return true
    end
  end

  def output(due, tendered)
    date = Time.now.strftime("%m/%d/%y %I:%M:%S") 
    puts "=====Thank You!====="
    puts tendered > due ? "Here is your change: $#{calculate(due,tendered)}" : "You owe $#{calculate(due,tendered)}"
    puts "#{date}"
    puts "===================="
  end
end

