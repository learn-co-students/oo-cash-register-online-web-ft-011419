class CashRegister 
  
  attr_accessor :total, :discount, :quantity
  
  def initialize(total = 0, discount = 20)
    @total = total
    @discount = discount
  end  
  
  def self.add_item(title, price, quantity = 0)
    self.total = total + (price*quantity)
  end  
  
  def self.apply_discount
    
  

end