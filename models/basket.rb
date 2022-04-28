require_relative '../repositories/discount_repo'
require_relative '../models/discount'

class Basket
  attr_reader :products, :product_repo

  def initialize(attributes = {})
    @products = attributes[:products] || Hash.new(0)
    @product_repo = attributes[:product_repo]
    @discount_repo = attributes[:discount_repo]
  end

  def total_price
    total = 0
    products.keys.each do |code|
      product = product_repo.find(code)
      discount = @discount_repo.find(code)

      case discount&.type
      when 'bogo'
        total += product.price * (products[code] / 2.to_f).ceil
      when '2/3 discount'
        price = products[code] >= discount.quantity ? product.price * (discount.value) : product.price
        total += price * products[code]
      when 'price drop'
        price = products[code] >= discount.quantity ? discount.value : product.price
        total += price * products[code]
      else
        total += product.price * products[code]
      end
    end
    total
  end

  def add(product)
    products[product.code] += 1
  end

end
