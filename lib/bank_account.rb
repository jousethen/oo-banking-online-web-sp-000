class BankAccount
  attr_reader :name, :status
  attr_accessor :balance
  
  def initialize (name)
    @name = name
    @balance = 1000
    @status = "open"
  end
  
  def deposit(amount)
    @balance += amount
  end
  
  def display_balance
    return "You balance is $#{@balance}."
  end
  
  def valid?
    if @balance > 0 && @status = "open"
      return true 
    else
      return false 
    end
  end
  
  def close_account
    @status = "closed"
  end
  
end
