class CashRegister 
  
  attr_accessor :total, :discount
  
  def initialize(total = 0, discount = '')
    @total = total
    @discount = discount
  end  

end