class BasketsView
  def display(products)
    products.each_with_index do |product, index|
      puts "#{index + 1}. #{product.name} - #{product.price}€"
    end
  end
