require_relative "repositories/product_repo"
require_relative "repositories/discount_repo"
require_relative "models/basket"
require_relative "models/product"
require_relative "models/discount"
require_relative "controllers/baskets_controller"
require_relative "router"

product_repository = ProductRepository.new

coffee = Product.new(name: "Coffee", price: 11.23, code: "CF1")
tea = Product.new(name: "Green Tea", price: 3.11, code: "GR1")
strawberries = Product.new(name: "Strawberries", price: 5, code: "SR1")

product_repository.create(coffee)
product_repository.create(tea)
product_repository.create(strawberries)

discount_repository = DiscountRepository.new

discount_repository.create(Discount.new(product: tea, type: 'bogo'))
discount_repository.create(Discount.new(product: strawberries, type: 'price drop', quantity: 3, value: 4.5))
discount_repository.create(Discount.new(product: coffee, type: '2/3 discount', quantity: 3, value: 2 / 3.to_f))

basket = Basket.new(product_repo: product_repository, discount_repo: discount_repository)

baskets_controller = BasketsController.new(basket)

router = Router.new(baskets_controller)
router.run
