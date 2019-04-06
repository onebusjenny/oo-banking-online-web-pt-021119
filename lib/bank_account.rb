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
     @balance = 1000 + money
   end
     
    def display_balance(balance)
      "Your balance is $#{@balance}."
    end
    
end
