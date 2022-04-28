class Basket
  attr_reader :products, :product_repo

  def initialize(attributes = {})
    @products = attributes[:products] || Hash.new(0)
    @product_repo = attributes[:product_repo]
    @discount_repo = attributes[:discount_repo]
  end
end
