class BankAccount
  attr_reader :name
  attr_accessor :balance, :status
  
  def initialize(name)
    bank_account = []
    @name = name
    @balance = 1000
    @status = "open"
  end
  
  def deposit(currency)
    @balance += currency
  end
  
  def display_balance
    "Your balance is " + "$" + "#{@balance}."
  end
  
  def valid?
    @status == "open" && @balance > 0
  end
  
  def close_account
    @status = "closed"
  end
end
