class ProductRepository
  def initialize
    @products = []
  end

  def create(product)
    @products << product
  end
end
