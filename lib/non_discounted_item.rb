class NonDiscountedItem
  attr_reader :name, :unit_price

  def initialize(name, unit_price, discounted_price = 0, discount_quantity = 0)
    @name = name
    @unit_price = unit_price
  end

  def purchase(quantity)
    [(quantity * @unit_price), 0]
  end
end
