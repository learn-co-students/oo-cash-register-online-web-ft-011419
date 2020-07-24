require "pry"

class CashRegister
  attr_accessor :discount, :total, :last_transaction

  @@items = []

  def initialize(total = 0)
    @total = 0
    @discount = total
    @@items = []
  end

  def add_item(item, price, quantity = 1)
    if quantity == 1
      @total += price
      @@items << item
    else
      @total += price * quantity
      @@items.fill(item, @@items.size, quantity)
    end
    @last_transaction = price
  end

  def apply_discount
    if @discount != 0
      percentage_discount = ((100.0 - @discount)/100.0) * @total
      @total = percentage_discount.round
      "After the discount, the total comes to $#{@total}."
    else
      "There is no discount to apply."
    end
  end

  def items
    @@items
  end

  def void_last_transaction
    @total -= @last_transaction
  end

end
