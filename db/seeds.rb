# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Flat.destroy_all

require 'faker'
9.times do
  Flat.create!(
  name: "#{Faker::FunnyName.name}",
  address: "10 #{Faker::Address.street_name} #{Faker::Address.city} #{Faker::Address.zip_code}",
  description: "#{Faker::ChuckNorris.fact}",
  price_per_night: rand(1..75),
  number_of_guests: rand(1..5)
)
end
