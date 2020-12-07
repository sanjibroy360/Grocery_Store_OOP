require_relative "grocery_store"

class Cart
  include GroceryStore

  def initialize
    @orders = []
  end

  def add_to_cart(ordered_items)
    unavailable_items, @orders = ordered_items.partition { |item| GroceryStore::MENU[item.to_sym].nil? }
    puts "\n#{unavailable_items.join(", ")} is unavailable now." unless unavailable_items.length == 0
  end
end
