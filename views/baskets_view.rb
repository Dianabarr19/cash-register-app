class BasketsView
  def display(products)
    products.each_with_index do |product, index|
      puts "#{index + 1}. #{product.name} - #{product.price}€"
    end
  end

  def display_total(basket, products_repo)
    puts ''
    puts '------ BASKET ------'
    puts ''
    basket.products.keys.each do |code|
      product = products_repo.find(code)
      puts "* #{product.name} - #{basket.products[code]}"
    end
    puts '--------------------'
    puts ''
    puts "Total price - #{basket.total_price.round(2)}€"
    puts ''
    puts '       ******       '
  end

  def ask_user_for_index
    puts ''
    puts 'Please insert the number of the product'
    print '> '
    index = gets.chomp.to_i - 1
    print `clear`
    index
  end
end
