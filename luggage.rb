class Luggage

  DEFAULT_MAX_CAPACITY = 10
  WEIGHT_PER_ITEM = 10

  attr_reader :items

  def initialize(capacity: DEFAULT_MAX_CAPACITY, items:)
    @capacity = capacity
    @items = items
  end

  def add(item)
    self.items << item
  end

  def weight
    self.items.size * WEIGHT_PER_ITEM
  end

end
