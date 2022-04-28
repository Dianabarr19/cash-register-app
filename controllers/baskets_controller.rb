require_relative '../views/baskets_view'
require_relative '../repositories/product_repo'

class BasketsController
  def initialize(basket)
    @basket = basket
    @baskets_view = BasketsView.new
  end

  def add
    product = nil

    while product.nil?
      product = select_product
    end

    @basket.add(product)
    @baskets_view.display_total(@basket, @basket.product_repo)
  end

  private

  def select_product
    products = @basket.product_repo.all
    @baskets_view.display(products)
    index = @baskets_view.ask_user_for_index
    return products[index]
  end
end
