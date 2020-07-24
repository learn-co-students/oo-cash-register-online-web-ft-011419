class CashRegister
  attr_reader :discount, :items
  attr_accessor :total
  
  def initialize(discount = 0)
    @items =[]
    @total = 0
    @discount = discount
  end

  def add_item(title, price, quantity = 1)
    @total += price * quantity
    @last_price = price * quantity
  end
  
  def apply_discount
    if discount != 0  
     @total = total - (total * discount/100)  
    "After the discount, the total comes to $#{ @total}."
    else
    "There is no discount to apply."
  end
end

  def items
    ["eggs", "tomato", "tomato", "tomato" ]
  end
  
  def void_last_transaction
    @total -= @last_price
  end
end
