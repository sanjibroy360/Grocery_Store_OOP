class Billing
  def initialize(orders)
    @orders = orders
  end

  def receipt
    item_sold = @orders.tally
    total_amount, saved_amount = item_sold.keys.reduce([0, 0]) do |amounts, item_name|
      total_price, saved_price = GroceryStore::MENU[item_name.to_sym].buy(item_sold[item_name])
      amounts[0] += total_price
      amounts[1] += saved_price
      amounts
    end
    p total_amount.round(2), saved_amount.round(2)
  end
end
