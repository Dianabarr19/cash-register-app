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

  def remove_at(index)
    @products.delete_at(index)
  end
end
