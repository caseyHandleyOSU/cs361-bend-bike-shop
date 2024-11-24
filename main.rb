!# /usr/bin/env ruby

require_relative 'bike'
require_relative 'rental'

items = [:apple, :water, :protein_bar]

bike = Bike.new(id: 1, color: :pink, price: 99.99, extra_items: items)

rental = Rental.new(item: bike)

puts "Total Price: #{rental.price}, Total Weight: #{rental.weight}"

