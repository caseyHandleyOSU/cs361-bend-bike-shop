# Defines a 'rentable'; a wrapper for 

class Rentable

  def initialize(isRented, cost, duration)
    @isRented = isRented
    @cost = cost
    @duration = duration
  end

  def rent!
    @isRented = true
  end

end