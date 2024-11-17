# Bike

require_relative 'inventory'

class Bike

  STANDARD_WEIGHT = 200 # lbs

  attr_accessor :id, :color, :price, :weight, :rented, :cargo_contents

  def initialize(id, color, price, weight = STANDARD_WEIGHT, rented = false)
    @id = id
    @color = color
    @price = price
    @weight = weight
    @rented = rented
    @cargo = Inventory.new
  end

  def rent!
    self.rented = true
  end

  def add_cargo(item)
    @cargo.add_item(item)
  end

  def remove_cargo(item)
    @cargo.remove_item(item)
  end

  def pannier_capacity
    return @cargo.max_capacity
  end

  def pannier_remaining_capacity
    return @cargo.remaining_capacity
  end

end
