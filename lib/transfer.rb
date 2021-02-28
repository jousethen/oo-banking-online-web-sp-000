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
    if @sender.balance - @amount > 0 && @status = "pending"
      @sender.balance -= @amount
      @status = "completed"
    else
      @status = "rejected"
      return "Transaction rejected. Please check your account balance."
  end
end
