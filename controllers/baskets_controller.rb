require_relative '../views/baskets_view'
require_relative '../repositories/product_repo'

class BasketsController
  def initialize(basket)
    @basket = basket
    @baskets_view = BasketsView.new
  end

  def add
    @basket.add(product)
    @baskets_view.display_total(@basket, @basket.product_repo)
  end
end
