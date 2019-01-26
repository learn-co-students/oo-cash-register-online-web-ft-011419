class CashRegister 
  attr_accessor :total, :discount, :price, :items 
  
  def initialize(discount = 0)
    @total = 0 
    @discount = discount 
    @items = []
  end 
  
  def add_item(item, price, quantity = 1)
    @total += price * quantity 
    quantity.times do 
      @items << item 
   end 
   @last_transaction = price * quantity 
 end 
 
 def apply_discount
   if @discount > 0
      @to_take_off = (@total * discount/100)
      @total = @total - @to_take_off
      return "After the discount, the total comes to $#{@total}."
    else
      return "There is no discount to apply."
    end
  end

  def void_last_transaction
    if @last_transaction > 0 
      @total = @total - @last_transaction
    end 
  end
  
end 



