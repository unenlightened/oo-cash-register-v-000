class CashRegister
  attr_accessor :total, :discount

  def initialize(discount = 0)
    @total = 0
    @discount = discount
  end

 def add_item(title, price, quantity = 1)
   @total += price * quantity
 end

 def apply_discount
   @total = self.total * ((100 - discount)/100)  # 1000 * 100/8
 end
end
