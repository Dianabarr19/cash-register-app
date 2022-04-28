class Product

  def initialize(attributes = {})
    @code = attributes[:code]
    @name = attributes[:name]
    @price = attributes[:price]
  end
end
