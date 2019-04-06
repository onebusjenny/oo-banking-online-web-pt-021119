class BankAccount
   attr_accessor :name, :balance, :status
   
   def initialize(name)
     @name = name
     @balance = 1000
     @status = "open"
   end
   
   def name=(name)
     name.freez
   end
   
   def deposit(money)
     money = 1000
     @balance << money
     @balance
    
   end
     
end
