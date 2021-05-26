# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
5.times do
  flat = Flat.new(
    name: Faker::Company.name,
    address: "#{Faker::Address.street_address}, #{Faker::Address.city}",
    description:  Faker::Lorem.paragraph,
    price_per_night: "#{rand(40..100)} $",
    number_of_guest: rand(0..6)
  )
  flat.save!
end
