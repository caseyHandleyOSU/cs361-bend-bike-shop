# Bike
require_relative 'luggage'

class Bike

  STANDARD_WEIGHT = 200 # lbs
  WEIGHT_COST_PER_LB = 2 
  LUGGAGE_COST_PER_LB = 2

  attr_reader :id, :color, :price, :weight, :luggage

  def initialize(id:, color:, price:, extra_items:)
    @id = id
    @color = color
    @base_price = price
    @weight = STANDARD_WEIGHT
    @luggage = Luggage.new(Luggage::DEFAULT_MAX_CAPACITY, extra_items, self)
  end

  def total_price
    return @base_price + (LUGGAGE_COST_PER_LB * @luggage.weight) + (WEIGHT_COST_PER_LB * @weight)
  end

  def total_weight
    return @weight + luggage.weight
  end

end
