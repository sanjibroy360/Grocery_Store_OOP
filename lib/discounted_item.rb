class DiscountedItem
  attr_reader :name, :unit_price, :discounted_price, :discount_quantity

  def initialize(name, unit_price, discounted_price, discount_quantity)
    @name = name
    @unit_price = unit_price
    @discounted_price = discounted_price
    @discount_quantity = discount_quantity
  end
end
