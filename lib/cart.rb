require_relative "grocery_store"
require_relative "billing"

class Cart
  include GroceryStore

  def initialize
    @orders = []
  end

  def checkout(billing: Billing)
    if (@orders.length > 0)
      billing.new(@orders).receipt
    else
      puts "No order has been placed."
    end
  end

  def add_to_cart(ordered_items)
    unavailable_items, @orders = ordered_items.partition { |item| GroceryStore::MENU[item.to_sym].nil? }
    puts "\n#{unavailable_items.join(", ")} is unavailable now." unless unavailable_items.length == 0
    checkout
  end
end
