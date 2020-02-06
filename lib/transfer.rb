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
end
