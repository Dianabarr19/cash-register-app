class BasketsView
  def display(products)
    products.each_with_index do |product, index|
      puts "#{index + 1}. #{product.name} - #{product.price}€"
    end
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
