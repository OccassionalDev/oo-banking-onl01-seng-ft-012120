class Transfer
  # your code here
  attr_accessor :status
  attr_reader :amount, :sender, :receiver
  
  def intialize(receiver, sender, amount)
    @sender = sender 
    @receiver = receiver
    @amount = amount 
    @status = "pending"
  end 
end
