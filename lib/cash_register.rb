class CashRegister
  attr_accessor :total, :employee_discount

  def initialize(discount = false)
    @total = 0
    @employee_discount = discount
  end
end
