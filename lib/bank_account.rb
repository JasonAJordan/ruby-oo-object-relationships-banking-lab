class BankAccount
    attr_reader :name
    attr_accessor :balance, :status
  
    @@all = []

    def initialize(name)
      @name = name
      @balance = 1000
      @status = "open"
      @@all << self 
    end
  
    def self.all 
        @@all 
    end 

    def deposit(deposit_amount)
      self.balance += deposit_amount
    end
  
    def display_balance
      "Your balance is $#{balance}."
    end
  
    def close_account
      self.status = "closed"
    end
  
    def valid?
      if self.balance > 0 && status == "open"
        true 
      else 
        false 
      end 
    end
  
  end