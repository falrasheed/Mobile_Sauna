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
sauna1 = Sauna.create!(
    title:        "Stunning Egg Sauna",
    address:      "Stockholm",
    description:  Faker::Company.bs,
    capacity:     5,
    price:        Faker::Number.number(digits: 3),
    sq_meter:     10,
    remote_photo_url: "https://i.pinimg.com/564x/52/56/fc/5256fc1f2bc5d6575d62322725912236.jpg",
    user: user1 )
sauna1 = Sauna.create!(
    title:        "Spacious Nordic Style Sauna",
    address:      "Trodheim",
    description:  Faker::Company.bs,
    capacity:     Faker::Number.number(digits: 1),
    price:        Faker::Number.number(digits: 3),
    sq_meter:     11,
    remote_photo_url: "https://i.pinimg.com/564x/0b/62/cb/0b62cbd5df9b2886db35e4f84f24a502.jpg",
    user: user1 )
sauna1 = Sauna.create!(
    title:        "Cozy Wood Fire Sauna",
    address:      "Sevilla",
    description:  Faker::Company.bs,
    capacity:     Faker::Number.number(digits: 1),
    price:        Faker::Number.number(digits: 3),
    sq_meter:     8,
    remote_photo_url: "https://i.pinimg.com/564x/4c/f0/32/4cf0324299b3541d5bc16d5fd0e3151f.jpg",
    user: user1 )
sauna1 = Sauna.create!(
    title:        "Floating Electric Sauna",
    address:      "Paris",
    description:  Faker::Company.bs,
    capacity:     Faker::Number.number(digits: 1),
    price:        Faker::Number.number(digits: 3),
    sq_meter:     20,
    remote_photo_url: "https://i.pinimg.com/564x/76/4f/d3/764fd3502b7aa3865870c37ac8176c5a.jpg",
    user: user1 )
sauna1 = Sauna.create!(
    title:        "Surf Sauna",
    address:      "Rome",
    description:  Faker::Company.bs,
    capacity:     Faker::Number.number(digits: 1),
    price:        Faker::Number.number(digits: 3),
    sq_meter:     7,
    remote_photo_url: "https://i.pinimg.com/564x/8a/f7/f7/8af7f717c803bce5ece036f6e0a73975.jpg",
    user: user1 )
sauna1 = Sauna.create!(
    title:        "Van Sauna",
    address:      "Rome",
    description:  Faker::Company.bs,
    capacity:     Faker::Number.number(digits: 1),
    price:        Faker::Number.number(digits: 3),
    sq_meter:     7,
    remote_photo_url: "https://i.pinimg.com/564x/8a/f7/f7/8af7f717c803bce5ece036f6e0a73975.jpg",
    user: user1 )
sauna1 = Sauna.create!(
    title:        "Barrel Sauna",
    address:      "Rome",
    description:  Faker::Company.bs,
    capacity:     Faker::Number.number(digits: 1),
    price:        Faker::Number.number(digits: 3),
    sq_meter:     7,
    remote_photo_url: "https://i.pinimg.com/564x/40/f7/31/40f73130e9ec280b08f1a8b831e90e41.jpg",
    user: user1 )
sauna1 = Sauna.create!(
    title:        "Tailer Sauna with Glass Wall",
    address:      "Rome",
    description:  Faker::Company.bs,
    capacity:     Faker::Number.number(digits: 1),
    price:        Faker::Number.number(digits: 3),
    sq_meter:     7,
    remote_photo_url: "https://i.pinimg.com/564x/ca/5f/59/ca5f5985aeb2306105a0ff613a428f8a.jpg",
    user: user1 )
sauna1 = Sauna.create!(
    title:        "Amazing, highly mobile Sauna",
    address:      "Rome",
    description:  Faker::Company.bs,
    capacity:     Faker::Number.number(digits: 1),
    price:        Faker::Number.number(digits: 3),
    sq_meter:     7,
    remote_photo_url: "https://i.pinimg.com/564x/77/21/18/77211825c42a4ce737d89320bb689bea.jpg",
    user: user1 )
sauna1 = Sauna.create!(
    title:        "Movable, Ski-Lift Sauna",
    address:      "Rome",
    description:  Faker::Company.bs,
    capacity:     Faker::Number.number(digits: 1),
    price:        Faker::Number.number(digits: 3),
    sq_meter:     7,
    remote_photo_url: "https://i.pinimg.com/564x/3c/c9/15/3cc91541ab1e35f936daf684ca0ae445.jpg",
    user: user1 )
sauna1 = Sauna.create!(
    title:        "Floating Teepee Sauna",
    address:      "Rome",
    description:  Faker::Company.bs,
    capacity:     Faker::Number.number(digits: 1),
    price:        Faker::Number.number(digits: 3),
    sq_meter:     7,
    remote_photo_url: "https://i.pinimg.com/564x/44/a1/52/44a1525d5acc580fe3435ad3685f5741.jpg",
    user: user1 )
sauna1 = Sauna.create!(
    title:        "Dual Floating Sauna",
    address:      "Rome",
    description:  Faker::Company.bs,
    capacity:     Faker::Number.number(digits: 1),
    price:        Faker::Number.number(digits: 3),
    sq_meter:     7,
    remote_photo_url: "https://i.pinimg.com/564x/3c/c9/15/3cc91541ab1e35f936daf684ca0ae445.jpg",
    user: user1 )
sauna1 = Sauna.create!(
    title:        "Floating Sauna with Terrace",
    address:      "Rome",
    description:  Faker::Company.bs,
    capacity:     Faker::Number.number(digits: 1),
    price:        Faker::Number.number(digits: 3),
    sq_meter:     7,
    remote_photo_url: "https://i.pinimg.com/564x/18/36/52/18365282bf737700863905f1066dcd2c.jpg",
    user: user1 )
sauna1 = Sauna.create!(
    title:        "Movable Dock Sauna",
    address:      "Rome",
    description:  Faker::Company.bs,
    capacity:     Faker::Number.number(digits: 1),
    price:        Faker::Number.number(digits: 3),
    sq_meter:     7,
    remote_photo_url: "https://i.pinimg.com/564x/29/f9/30/29f9300264f48b69f2a5f29722a3046f.jpg",
    user: user1 )
sauna1 = Sauna.create!(
    title:        "Two-Floor Floating Sauna",
    address:      "Rome",
    description:  Faker::Company.bs,
    capacity:     Faker::Number.number(digits: 1),
    price:        Faker::Number.number(digits: 3),
    sq_meter:     7,
    remote_photo_url: "https://i.pinimg.com/564x/ed/35/4b/ed354b44ab69d0249e110f1191d0e15c.jpg",
    user: user1 )
sauna1 = Sauna.create!(
    title:        "Highly Mobile Dock Sauna",
    address:      "Rome",
    description:  Faker::Company.bs,
    capacity:     Faker::Number.number(digits: 1),
    price:        Faker::Number.number(digits: 3),
    sq_meter:     7,
    remote_photo_url: "https://i.pinimg.com/564x/5e/fb/03/5efb0355f8b21f0023940e25e76329fe.jpg",
    user: user1 )
sauna1 = Sauna.create!(
    title:        "Floating Sauna with Hammocks",
    address:      "Rome",
    description:  Faker::Company.bs,
    capacity:     Faker::Number.number(digits: 1),
    price:        Faker::Number.number(digits: 3),
    sq_meter:     7,
    remote_photo_url: "https://i.pinimg.com/564x/5e/b3/31/5eb33139c26afab20955374628f7ea44.jpg",
    user: user1 )
sauna1 = Sauna.create!(
    title:        "Classic, Mobile Sauna",
    address:      "Rome",
    description:  Faker::Company.bs,
    capacity:     Faker::Number.number(digits: 1),
    price:        Faker::Number.number(digits: 3),
    sq_meter:     7,
    remote_photo_url: "https://i.pinimg.com/564x/73/cf/bd/73cfbd5769263aef0ddf0f68bb9d3b97.jpg",
    user: user1 )
sauna1 = Sauna.create!(
    title:        "Two-Floor Floating Sauna",
    address:      "Rome",
    description:  Faker::Company.bs,
    capacity:     Faker::Number.number(digits: 1),
    price:        Faker::Number.number(digits: 3),
    sq_meter:     7,
    remote_photo_url: "https://i.pinimg.com/564x/ed/35/4b/ed354b44ab69d0249e110f1191d0e15c.jpg",
    user: user1 )
sauna1 = Sauna.create!(
    title:        "Container Sauna",
    address:      "Rome",
    description:  Faker::Company.bs,
    capacity:     Faker::Number.number(digits: 1),
    price:        Faker::Number.number(digits: 3),
    sq_meter:     7,
    remote_photo_url: "https://i.pinimg.com/564x/6f/71/23/6f7123763ca56fde9decacb054c99ede.jpg",
    user: user1 )
sauna1 = Sauna.create!(
    title:        "Glass Sauna",
    address:      "Rome",
    description:  Faker::Company.bs,
    capacity:     Faker::Number.number(digits: 1),
    price:        Faker::Number.number(digits: 3),
    sq_meter:     7,
    remote_photo_url: "https://i.pinimg.com/564x/36/6b/aa/366baa2ee0198c4a105a7121162c7401.jpg",
    user: user1 )
puts 'Finished!'
