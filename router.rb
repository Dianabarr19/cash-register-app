class Router
  def initialize(baskets_controller)
    @baskets_controller = baskets_controller
    @running = true
  end

  def run
    while @running
      route_action
    end
  end

  private

  def route_action
    print_menu
    choice = gets.chomp.to_i
    print `clear`
    user_action(choice)
  end

  def print_menu
    puts ''
    puts '--------------------'
    puts '------- MENU -------'
    puts '--------------------'
    puts '1. Add product to basket'
    puts '2. Delete a product from basket'
    puts '3. Exit'
    puts '--------------------'
    puts ''
    puts 'Please select a number'
    print '> '
  end

  def user_action(choice)
    case choice
    when 1 then @baskets_controller.add
    when 2 then @baskets_controller.destroy
    when 3 then stop!
    else puts 'Wrong number, please try again...'
    end
  end

  def stop!
    @running = false
  end
end
