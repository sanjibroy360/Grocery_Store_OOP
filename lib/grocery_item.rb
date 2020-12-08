require_relative "discounted_item"
require_relative "non_discounted_item"

class GroceryItem
  def self.add(name, unit_price, discounted_price = 0, discount_quantity = 0)
    if (discount_quantity >= 1)
      DiscountedItem
    else
      NonDiscountedItem
    end.new(name, unit_price, discounted_price, discount_quantity)
  end
end
