# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Creating 5 flats...'
5.times do |i|
  flat = Flat.create!(
    name: Faker::Dessert.flavor,
    address: Faker::Address.full_address,
    description: Faker::Hipster.paragraph,
    price_per_night: rand(100),
    number_of_guests: rand(10)
  )
  puts "#{i + 1}. #{flat.name}"
end
puts 'Finished!'
