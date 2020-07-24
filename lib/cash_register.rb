class CashRegister
  attr_accessor :total, :discount, :items, :last_transaction
  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
    @last_transaction = []
  end
  def add_item(title, price, quantity=1)
    @total += price * quantity
    quantity.times do
      @items << title
    end
    @last_transaction = [title, price, quantity]
  end
  def apply_discount
    if @discount != 0
      @total *= (1 - discount * 0.01)
      return "After the discount, the total comes to $#{@total.to_i}."
    else
      return "There is no discount to apply."
    end
  end
  def void_last_transaction
    title, price, quantity = last_transaction[0], last_transaction[1], last_transaction[2]
    @total -= price * quantity
    quantity.times do
      @items = @items.slice!(-1)
    end
  end
end
