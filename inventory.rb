
class Inventory

  def initialize(items = [], maxNumItems = 10)
    @items = items
    @MAX_CARGO_ITEMS = maxNumItems
  end

  # Can the provided item be added to this inventory?
  def can_add_item(item)
    return self.remaining_capacity > 0
  end

  # Add an item to this inventory
  def add_item(item)
    return unless can_add_item(item)
    @items << item
  end

  # Remove an item from this inventory
  def remove_item(item)
    @items.remove(item)
  end
  
  # The maximum capacity of this inventory
  def max_capacity
    return @MAX_CARGO_ITEMS
  end

  # The remaining capacity of this inventory
  def remaining_capacity
    return self.max_capacity() - @items.size
  end

end