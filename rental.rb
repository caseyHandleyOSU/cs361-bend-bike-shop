class Rental

  attr_reader :item

  def initialize(item:)
    @item = item
  end

  def price
    self.item.total_price
  end

  def weight
    self.item.total_weight
  end

end
