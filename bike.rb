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
    @price = price
    @weight = STANDARD_WEIGHT
    @luggage = Luggage.new(Luggage::DEFAULT_MAX_CAPACITY, extra_items, self)
  end

end
