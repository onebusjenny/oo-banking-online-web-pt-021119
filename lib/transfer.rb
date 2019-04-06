class Transfer
  attr_accessor  :sender, :receiver, :status, :amount
  
  def initialize(sender, receiver, amount)
    
    @sender = sender
    @receiver = receiver
    @status = "pending"
    @amount = amount
end

  def valid?
    if @sender.valid? && @receiver.valid?
      true
    else
      false
    end
end

 
if @sender.balance < @amount
      @status = "rejected"
      elsif @status == "complete"
      puts "Transaction was already excuted"
    else
      @sender.deposit( @amount * -1 ) 
      @receiver.deposit( @amount )
      @status = "complete"
    end
  end
end