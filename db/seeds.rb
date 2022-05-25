# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Flat.create!(
  name: "Malfoy Manor",
  address: "#{Faker::Movies::HarryPotter.spell} Road",
  host: 'Bellatrix Lestrange', # hard coded for now
  description: Faker::Movies::HarryPotter.quote,
  picture_url: "https://i.pinimg.com/originals/44/09/86/440986b0f1465bc7530c933ab4f097c1.jpg",
  price_per_night: rand(90..200),
  number_of_guests: rand(2..25)
)
