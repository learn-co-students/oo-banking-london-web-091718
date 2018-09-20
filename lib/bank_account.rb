class BankAccount
  attr_accessor :status, :balance
  attr_reader :name

  def initialize(name)
    @name = name
    @status = "open"
    @balance = 1000
  end

  def deposit(income)
    @balance += income
  end

  def display_balance
    "Your balance is $#{balance}."
  end

  def valid?
    self.balance > 0 && self.status == "open" ? true : false
  end

  def close_account
    @status = "closed"
    # alternative: self.status = "closed"
  end


end
