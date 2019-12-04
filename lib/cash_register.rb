class CashRegister
  attr_accessor :total, :discount, :items, :previous_total

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(title, price, quantity = 1)
    @previous_total = @total
    @items << title
    if quantity > 1
      @total += (price * quantity)
    else
      @total += price
    end
  end

  def apply_discount
    if @discount > 0
      @total *= (@discount / 100.00)
      puts "Discount applied! #{@discount}"
    else
      puts "Error: No discount to apply."
    end
  end
end
