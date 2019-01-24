class CashRegister
  attr_accessor :total, :discount

  def initialize(total = 0)
    @total = 0
    @discount = total
  end

  def add_item(item, price, quantity = 1)
    if quantity == 1
      @total = price
    else
      @total = price * quantity
    end
  end

end
