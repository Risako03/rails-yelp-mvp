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
dishoom = { name: "Dishoom", address: "7 Boundary St, London E2 7JE", phone_number: 080-6678, category: italian, stars: 5 }
mabo = { name: "Mabo", address: "7 Boundary St, E2 7JE", phone_number: 080-6679, category: chinese, stars: 4 }
tol = { name: "Tol", address: "7 , London E2 7JE", phone_number: 080-6680, category: japanese, stars: 3 }
pizza = { name: "Pizza", address: "7  E2 7JE", phone_number: 080-6681, category: french, stars: 2 }
dish = { name: "Dish", address: "7 Boundary St", phone_number: 080-6682, category: belgian, stars: 1 }

[ dishoom, mabo, tol, pizza, dish ].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
