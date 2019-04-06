class Transfer
  attr_accessor  :sender, :receiver, :status, :transfer_amount
  
  def initialize(sender, receiver)
    
    @sender = sender
    @receiver = receiver
   
    @transfer_amount = transfer_amount
end
end