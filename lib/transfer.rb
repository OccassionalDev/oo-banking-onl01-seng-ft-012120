class Transfer
  # your code here
  attr_accessor :status
  attr_reader :amount, :sender, :receiver
  
  def initialize(sender, receiver, amount)
    @sender = sender 
    @receiver = receiver
    @amount = amount 
    @status = "pending"
  end
  
  def valid?
    if self.sender.valid? && self.receiver.valid?
      return true 
      
    else 
      return false
    end 
  end
  
  def execute_transaction 
    if self.sender.balance < self.amount
      @status = "Transaction rejected. Please check your account balance."
      
    elsif @status != "pending"
      return nil 
      
    else 
      self.sender.balance -= amount 
      self.receiver.balance += amount 
      @status = "complete"
    end 
  end 
end
