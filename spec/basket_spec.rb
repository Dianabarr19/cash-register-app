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
  describe '#products' do
    it 'should return a hash with all the products' do
      products = {
        "GR1": 1,
        "CF1": 1,
        "SR": 1
      }

      basket = Basket.new(products: products, discount_repo: @discount_repo)

      expect(basket.products.keys.length).to eq(3)
    end
  end

  describe '#total_price' do
    context 'basket without discounts' do
      it 'should return the total price' do
        products = {
          "GR1": 1,
          "CF1": 1
        }

        basket = Basket.new(products: products, product_repo: @product_repo, discount_repo: @discount_repo)

        expect(basket.total_price).to eq(14.34)
      end
    end

    context 'basket with discounts' do
      it "should return the total price with the 'buy 1 get 1 free' discount" do
        products = {
          "GR1": 2
        }

        basket = Basket.new(products: products, product_repo: @product_repo, discount_repo: @discount_repo)

        expect(basket.total_price).to eq(3.11)
      end

      it "should return the total price with the 'price drop after 3' discount" do
        products = {
          "SR1": 3
        }

        basket = Basket.new(products: products, product_repo: @product_repo, discount_repo: @discount_repo)

        expect(basket.total_price).to eq(13.5)
      end

      it "should return the total price with the '2/3 discount after 3' discount" do
        products = {
          "CF1": 3
        }

        basket = Basket.new(products: products, product_repo: @product_repo, discount_repo: @discount_repo)

        expect(basket.total_price).to eq(22.46)
      end

      it 'should return the total amount of the basket to 16.61€ ' do
        products = {
          "SR1": 3,
          "GR1": 1
        }

        basket = Basket.new(products: products, product_repo: @product_repo, discount_repo: @discount_repo)

        expect(basket.total_price).to eq(16.61)
      end

      it 'should return the total amount of the basket to 30.57€ ' do
        products = {
          "SR1": 1,
          "GR1": 1,
          "CF1": 3
        }

        basket = Basket.new(products: products, product_repo: @product_repo, discount_repo: @discount_repo)

        expect(basket.total_price).to eq(30.57)
      end
    end
  end
end
