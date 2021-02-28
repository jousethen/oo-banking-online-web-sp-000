class Transfer
  attr_accessor :amount, :sender, :receiver, :status
  
  def initialize (sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @amount = amount
    @status = "pending"
  end
  
  def valid?
    if @sender.valid? && @receiver.valid?
      return true 
    else
      return false 
    end
  end
  
  def execute_transaction
    if @sender.balance - @amount > 0
      @sender.balance -= @amount
    else
      puts
  end
end
