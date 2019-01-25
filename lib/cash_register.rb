require 'pry'
class CashRegister

  attr_accessor :total, :basket, :discount

  @@all = []

  def initialize(discount=0)
    @total = 0
    @discount = discount
    @basket = []
  end

  def add_item(title, price, quantity = 1)
      @total = @total + price*quantity
      quantity.times do
      @basket << title
      @@all << @basket
      end
      @total
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
    @total=0
  end


end
