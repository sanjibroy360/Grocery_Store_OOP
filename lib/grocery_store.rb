require_relative "grocery_item"

module GroceryStore
  MENU = [GroceryItem.add("milk", 3.97, 5, 2),
          GroceryItem.add("bread", 2.17, 6, 3),
          GroceryItem.add("banana", 0.99, 0, 0),
          GroceryItem.add("apple", 0.89, 0, 0)]
end
