# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# puts 'Cleaning user database...'
# User.destroy_all

# puts 'Creating Users'
# users_attributes = [
#   {
#     email:      Faker::Internet.email,
#     password: "password",
#     first_name:     Faker::Name.first_name,
#     last_name:       Faker::Name.last_name,
#   },
# ]
# User.create!(users_attributes)
# puts 'Finished seeding users!'



puts 'Cleaning sauna database...'
Sauna.destroy_all

puts 'Creating mobile saunas'
saunas_attributes = [
  {
    address:      Faker::Address.street_address,
    description:  Faker::Company.bs,
    capacity:     Faker::Number.number(digits: 1),
    price:        Faker::Number.number(digits: 3),
    user_id: 14,
  },
]
Sauna.create!(saunas_attributes)
puts 'Finished!'
