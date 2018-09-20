class BankAccount
   attr_accessor :balance, :status
  attr_reader :name
   def initialize (name)
    @name = name
    @balance = 1000
    @status = "open"
  end
   def deposit(income)
    @balance += income
  end
   def display_balance
    "Your balance is $#{@balance}." #NOTE: question on @balance / balance difference
  end
   def valid?
    @balance > 0 && @status == "open"?  true : false  #if both conditions true, return left of colon; if false, execute right.
    # alternative:   self.balance > 0 && self.status == 'open'
  end
   def close_account
    @status = "closed"
    # alternative: self.status = "closed"
  end
 end
