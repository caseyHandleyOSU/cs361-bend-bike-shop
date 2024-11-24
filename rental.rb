class Rental

  attr_reader :bike

  def initialize(bike)
    @bike = bike
  end

  def price
    self.bike.total_price
  end

  def weight
    self.bike.total_weight
  end

end
