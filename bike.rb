# Bike

require_relative 'inventory'
require_relative 'rentable'

class Bike

  STANDARD_WEIGHT = 200 # lbs

  attr_accessor :id, :color, :price, :weight, :rented

  def initialize(id, color, price, weight = STANDARD_WEIGHT, rented = false)
    # Necessary Bike Information that probably shouldn't be abstracted!
    @id = id
    @color = color
    @price = price
    @weight = weight
    # Not exclusive to a bike
    @rentalData = Rentable.new(rented, 0, 0) # Rentable class is used to extract data that may not be exclusive to bike rentals, without needing to change the [bikeInstance].rent! signature
    @cargo = Inventory.new # A bike's cargo is basically just an inventory, which could be used elsewhere (such as storing the catalog of bikes!)
  end

  def rent!
    @rentalData.rent!
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
