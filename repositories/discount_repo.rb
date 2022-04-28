class DiscountRepository
  def initialize
    @discounts = []
  end

  def create(discount)
    @discounts << discount
  end
end
