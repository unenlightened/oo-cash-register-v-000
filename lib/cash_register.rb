class CashRegister
  attr_accessor :total, :discount

  def initialize(discount = 0)
    @total = 0
    @discount = discount.to_f         # to float
  end

 def add_item(title, price, quantity = 1)
   @total += price * quantity
 end

 def apply_discount
   @total = @total * ((100 - discount) / 100)
   @total = @total.to_i if @total == @total.to_i
   "After the discount, the total comes to $#{@total}."
 end
end
