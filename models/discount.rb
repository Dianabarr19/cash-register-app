class Discount
  attr_reader :type, :quantity, :value, :product

  def initialize(attributes = {})
    @type = attributes[:type]
    @quantity = attributes[:quantity]
    @value = attributes[:value]
    @product = attributes[:product]
  end
end
