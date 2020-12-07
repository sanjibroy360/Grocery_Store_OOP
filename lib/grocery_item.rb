require_relative "discounted_item"
require_relative "item"

class GroceryItem
  def self.add(name, unit_price, discounted_price = 0, discount_quantity = 0)
    if (discount_quantity >= 1)
      DiscountedItem
    else
      Item
    end.new(name, unit_price, discounted_price = 0, discount_quantity = 0)
  end
end
