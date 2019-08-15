# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Cleaning user database...'
User.destroy_all

puts 'Creating Users'
user1 = User.create( email:      "victor@lewagon.com",
    password: "password",
    first_name:     "Victor",
    last_name:       "Padilla")
puts 'Finished seeding users!'



puts 'Cleaning sauna database...'
Sauna.destroy_all

puts 'Creating mobile saunas'
sauna1 = Sauna.create!(
    title:        "Hot stuff",
    address:      "Barcelona",
    description:  Faker::Company.bs,
    capacity:     Faker::Number.number(digits: 1),
    price:        Faker::Number.number(digits: 3),
    sq_meter:     10,
    remote_photo_url: "https://secure.img1-fg.wfcdn.com/im/07541924/compr-r85/7122/71229515/watoga-fir-4-person-traditional-steam-sauna.jpg",
    user: user1 )
sauna1 = Sauna.create!(
    title:        "Rainy wet Sauna",
    address:      "London",
    description:  Faker::Company.bs,
    capacity:     Faker::Number.number(digits: 1),
    price:        Faker::Number.number(digits: 3),
    sq_meter:     11,
    remote_photo_url: "https://image.jimcdn.com/app/cms/image/transf/dimension=1920x400:format=jpg/path/sb407110dbff6775a/image/i83ac7c1685cf31e2/version/1530856781/image.jpg",
    user: user1 )
sauna1 = Sauna.create!(
    title:        "Medieval Sauna",
    address:      "Girona",
    description:  Faker::Company.bs,
    capacity:     Faker::Number.number(digits: 1),
    price:        Faker::Number.number(digits: 3),
    sq_meter:     8,
    remote_photo_url: "https://i.pinimg.com/originals/e4/83/e0/e483e0c3e728522fff8028f71fd4994e.jpg",
    user: user1 )
sauna1 = Sauna.create!(
    title:        "Very very hot sauna",
    address:      "Madrid",
    description:  Faker::Company.bs,
    capacity:     Faker::Number.number(digits: 1),
    price:        Faker::Number.number(digits: 3),
    sq_meter:     20,
    remote_photo_url: "https://static.designboom.com/wp-content/uploads/2014/03/archiplein-the-mobile-sauna-designboom01.jpg",
    user: user1 )
sauna1 = Sauna.create!(
    title:        "Sauna that serves coffee and pizza",
    address:      "Milan",
    description:  Faker::Company.bs,
    capacity:     Faker::Number.number(digits: 1),
    price:        Faker::Number.number(digits: 3),
    sq_meter:     7,
    remote_photo_url: "http://lalichette-saunamobile.fr/wp-content/uploads/2017/01/le-sauna-mobile.jpg",
    user: user1 )

puts 'Finished!'
