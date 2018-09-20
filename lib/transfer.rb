class Transfer
  attr_accessor :sender, :receiver, :amount, :status, :sent_amount

  def initialize(from, to, amount)
    @sender = from
    @receiver = to
    @amount = amount
    @status = "pending"
    @sent_amount = 0
  end

  def valid?
    @sender.valid? && @receiver.valid?
  end

  def execute_transaction
    if valid?
      @sent_amount = @amount
      @sender.balance -= @amount
      @receiver.balance += @amount
      @status = "complete"
      @amount = 0
    end
    if @sender.valid? == false
      @status = "rejected"
      "Transaction rejected. Please check your account balance."
    end
  end

  def reverse_transfer
    @sender.balance += @sent_amount
    @receiver.balance -= @sent_amount
    @status = "reversed"
  end
end