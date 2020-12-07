require_relative "grocery_item"

module GroceryStore
  MENU = [
    GroceryItem.add("milk", 3.97, 5, 2),
    GroceryItem.add("bread", 2.17, 6, 3),
    GroceryItem.add("banana", 0.99, 0, 0),
    GroceryItem.add("apple", 0.89, 0, 0),
  ]

  def take_order()
    puts "Please enter all the items purchased separated by a comma."
    user_input = gets.chomp!

    if (user_input.length > 0)
      parse_input_string(user_input)
    else
      puts "No order has been placed."
      take_order
    end
  end

  def parse_input_string(user_input)
    ordered_grocery_items = user_input.downcase.split(",").map { |item| item.gsub(/\s+/, "") }
  end
end
