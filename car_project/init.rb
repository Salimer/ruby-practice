
require_relative 'lib/car'

puts
puts "Enter information for the car"
puts

print "Make: "
make = gets.chomp

print "Year: "
year = gets.chomp

print "Color: "
color = gets.chomp

car = Car.new( make: make, year: year, color: color )

puts
puts "I understand that you want to pruches #{car.full_name}"