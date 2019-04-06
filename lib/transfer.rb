class Transfer
  attr_accessor :transfer, :sender, :receiver, :status
  
  def initialize(transfer)
    @transfer = transfer
    @sender = sender
    @receiver = receiver
    @status = "pending"
end
