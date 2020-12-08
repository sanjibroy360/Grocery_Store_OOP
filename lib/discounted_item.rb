class DiscountedItem
  attr_reader :name, :unit_price, :discounted_price, :discount_quantity

  def initialize(name, unit_price, discounted_price, discount_quantity)
    @name = name
    @unit_price = unit_price
    @discounted_price = discounted_price
    @discount_quantity = discount_quantity
  end

  def total_amount(quantity)
    ((quantity / @discount_quantity) * @discounted_price) + ((quantity % @discount_quantity) * @unit_price)
   
  end

  def actual_amount(quantity)
    quantity * @unit_price
  end

  def buy(quantity)
    total_price = total_amount(quantity)
    actual_price = actual_amount(quantity)
    saved_amount = actual_price - total_price
    [total_price, saved_amount]
  end
end
