class Transfer
  # your code here
  attr_accessor :status
  attr_reader :amount, :sender, :receiver, :transfered_once
  
  def initialize(sender, receiver, amount)
    @sender = sender 
    @receiver = receiver
    @amount = amount 
    @status = "pending"
    @transfered_once = false
  end
  
  def valid?
    if self.sender.valid? && self.receiver.valid?
      return true 
      
    else 
      return false
    end 
  end
  
  def execute_transaction 
    if @transfered_once == false && self.sender.balance < amount 
      return nil 
      
    else 
      self.sender.balance -= amount 
      self.receiver.balance += amount 
      @status = "complete"
      @transfered_once = true
    end 
  end 
end
