# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).

# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "cleaning database"
Restaurant.destroy_all

puts "Creating restaurants..."
10.times do
  Restaurant.create(
    name: Faker::Name.name,
    address: Faker::Address.city,
    phone_number: Faker::PhoneNumber,
    category: ["chinese", "italian", "japanese", "french", "belgian"].sample
)
end
