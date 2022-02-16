# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
dishoom = { name: "Dishoom", address: "7 Boundary St, London E2 7JE", rating: 5 }
pizza_east =  { name: "Pizza East", address: "56A Shoreditch High St, London", rating: 4 }
pizza_west =  { name: "Pizza West", address: "Checkpoint Charlie 2, Berlin", rating: 3 }
spaghetti = { name: "Spaghetti", address: "Sternstrasse 69, Düsseldorf", rating: 2 }
nero = { name: "Nero", address: "Marschallstrasse 29, Bonn", rating: 1 }

[dishoom, pizza_east, pizza_west, spaghetti, nero].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
