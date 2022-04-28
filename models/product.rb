class Product
  attr_reader :name, :price, :code

  def initialize(attributes = {})
    @code = attributes[:code]
    @name = attributes[:name]
    @price = attributes[:price]
  end
end
