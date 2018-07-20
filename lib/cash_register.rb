require'pry'

class CashRegister
  
  attr_accessor :total, :items, :discount, :transaction
 
  
  def initialize(discount=0)
    @total = 0
    @discount = discount
    @items = []
  end
  
  def apply_discount
    if discount == 0 
      return "There is no discount to apply."
    else
        self.total = self.total - self.total * self.discount / 100.00
       "After the discount, the total comes to $#{total.round}."
    end
  end
  
  def add_item(item, price, quantity=1)
    self.total += price * quantity
    quantity.times do
      items << item
    end
    self.transaction = price * quantity
  end
  
  def void_last_transaction
    self.total - self.transaction
  end
binding.pry
  
  
end

 CashRegister.new.add_item("tomato", 1.76)