require 'pry'
class CashRegister

  attr_accessor :total, :basket, :discount, :last_transaction

  @@all = []

  def initialize(discount=0)
    @total = 0
    @discount = discount
    @basket = []
  end

  def add_item(title, price, quantity = 1)
      @total += price*quantity
      quantity.times do
      @basket << title
      @@all << @basket
      end
      @last_transaction = price*quantity
    end


  def apply_discount
    if @discount != 0
    @discount = @discount/100.0
    @total = @total - @total*@discount
    "After the discount, the total comes to $#{@total.to_i}."
  else
    "There is no discount to apply."
end
  end

  def items
    @basket
  end

  def void_last_transaction
    @total = @total - @last_transaction
  end


end
