class ProductRepository
  def initialize
    @products = []
  end

  def create(product)
    @products << product
  end

  def all
    @products
  end

  def find(code)
    @products.find { |product| product.code == code.to_s }
  end

  def remove_at(index)
    @products.delete_at(index)
  end
end
