class CashRegister
  def initialize(discount=0)
    @total = 0 
    @items = []
    @discount = discount
  end
  attr_accessor :total, :items, :discount, :last_price
  def add_item(item, price,quantity=1)
    ii = 0
    while (ii<quantity)
      @items << item
      ii+=1
    end
    @last_price = price*quantity
    @total+= @last_price
  end
  def apply_discount
    if @discount==0 
      return "There is no discount to apply."
    end
    @total = @total-@total*@discount/100
    return "After the discount, the total comes to $#{@total}."
  end
  def void_last_transaction
    @total -= last_price
  end
end
