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

  def execute_transaction
    if @sender.balance < @amount
      @status = "rejected"
      puts "Transaction rejected. Please check your amount balance"
    else if @status == "completed"
      "Transaction is completed"
  else
    @sender.deposit( @amount *-1)
    @sender.deposit(@amount)
    @status = "complete"
    end
  end
  
end