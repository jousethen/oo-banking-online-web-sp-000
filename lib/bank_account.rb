class BankAccount
  attr_reader :name, :status, :balance
  
  def initialize (name)
    @name = name
    @balance = 1000
    @status = "open"
  end
  
  def deposit(amount)
    @balance += amount
  end
  
  def display_balance
    puts "You balance is $#{@balance}."
  end
  
  def valid?
    if @balance > 0 && @status = "open"
      return true 
    else
      return false 
    end
  end
  
  def close_account
    @status = "close"
  end
  
end
