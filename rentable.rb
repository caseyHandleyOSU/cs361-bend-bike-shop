# Defines a 'rentable'; a wrapper for 

class Rentable

  def initialize(isRented, cost, duration)
    @isRented = isRented
    @cost = cost
    @duration = duration # Example of other data that this class could have
  end

  # Mark the Rentable as rented
  def rent!
    @isRented = true
  end

end