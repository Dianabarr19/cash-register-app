require_relative "../models/basket"
require_relative "../repositories/product_repo"

describe "Basket", :basket do
  before(:each) do
    @product_repo = ProductRepository.new

    tea = Product.new(name: "Green Tea", price: 3.11, code: "GR1")
    coffee = Product.new(name: "Coffee", price: 11.23, code: "CF1")
    strawberries = Product.new(name: "Strawberries", price: 5, code: "SR1")

    @product_repo.create(tea)
    @product_repo.create(coffee)
    @product_repo.create(strawberries)

    @discount_repo = DiscountRepository.new

    @discount_repo.create(Discount.new(product: tea, type: 'bogo'))
    @discount_repo.create(Discount.new(product: strawberries, type: 'price drop', quantity: 3, value: 4.5))
    @discount_repo.create(Discount.new(product: coffee, type: '2/3 discount', quantity: 3, value: 2 / 3.to_f))
  end
end
