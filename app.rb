require_relative 'models/product'

coffee = Product.new(name: "Coffee", price: 11.23, code: "CF1")
tea = Product.new(name: "Green Tea", price: 3.11, code: "GR1")
strawberries = Product.new(name: "Strawberries", price: 5, code: "SR1")

product_repository = ProductRepository.new

product_repository.create(coffee)
product_repository.create(tea)
product_repository.create(strawberries)
