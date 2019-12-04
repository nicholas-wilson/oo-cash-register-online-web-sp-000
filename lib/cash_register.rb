class CashRegister
  attr_accessor :total, :employee_discount

  def initialize(discount = 0)
    @total = 0
    @employee_discount = discount
  end
end
