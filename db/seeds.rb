# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).

puts "Resetting the restaurants..."
Restaurant.destroy_all
puts "Reset done!"

puts "Creating the new restaurants..."
10.times do |index|
  resto = Restaurant.create!(
    name: Faker::Restaurant.name,
    address: Faker::Address.street_name,
    rating: rand(1..5)
  )
  puts "Created #{resto.name}."
end
 puts "Seeds done!"