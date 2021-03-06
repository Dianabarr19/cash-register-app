class DiscountRepository
  def initialize
    @discounts = []
  end

  def create(discount)
    @discounts << discount
  end

  def find(code)
    @discounts.find { |discount| discount.product.code == code.to_s }
  end
end
