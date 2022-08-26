# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require "open-uri"

borat_pic = URI.open("https://www.cdiscount.com/pdt2/8/5/6/1/700x700/auc7569000747856/rw/maillot-de-bain-borat-mankini.jpg")
jacket_pic = URI.open("https://imagescdn.allensolly.com/img/app/product/2/253003-945846.jpg?auto=format")
parka_pic = URI.open("https://images.asos-media.com/products/asos-design-parka-legere-marron-clair/200407374-1-lightbrown?$n_640w$&wid=513&fit=constrain")
sweater_pic = URI.open("https://image.tfgmedia.co.za/image/1/process/486x486?source=https://cdn.tfgmedia.co.za/03/ProductImages/59447924.jpg")
cardigan_pic = URI.open("https://i5.walmartimages.com/asr/471a0e4c-1e83-403c-805c-3ac60ce67650.02bc012d6dfdebf39fda275ff3491964.jpeg")
tee_shirt_pic = URI.open("https://sc01.alicdn.com/kf/U02f8214616674cebb4e1a08231ee13580.jpg")
tank_top_pic = URI.open("https://d1l2kcmc130e06.cloudfront.net/2/images/colors_240x300/bella-canvas-6008-true-royal.jpg")
shirt_pic = URI.open("https://5.imimg.com/data5/CE/XG/MY-68030708/mens-readymade-pink-shirt-500x500.jpg")
hoodie_pic = URI.open("https://img01.ztat.net/article/spp-media-p1/6057be667e4646cdb14475c8d1166969/59430b7f064d4b918ddabe0abc0c42cc.jpg?imwidth=1800")
crop_top_pic = URI.open("https://media.boohoo.com/i/boohoo/gzz00185_lilac_xl?w=900&qlt=default&fmt.jp2.qlt=70&fmt=auto&sm=fit")

raphael_picture = URI.open("https://media-exp1.licdn.com/dms/image/C4E03AQGoff3WMy8Nqw/profile-displayphoto-shrink_200_200/0/1658735391018?e=1665014400&v=beta&t=tj3_20ppo26RfcTRLunmDZCxkbcCmGt08bPVVQkpznQ")
marwan_picture = URI.open("https://media-exp1.licdn.com/dms/image/C4E03AQGm4rLGWJanYg/profile-displayphoto-shrink_800_800/0/1593190812282?e=1666828800&v=beta&t=phSR8PbKJ0iN_2yd7RFfmxXQdUCmQkyDxLE00-UMwb4")
clara_picture = URI.open("https://static1.purepeople.com/articles/0/36/60/50/@/5278196-clara-luciani-arrivees-au-defile-de-mo-624x600-2.jpg")
thomas_picture = URI.open("https://media-exp1.licdn.com/dms/image/D4E35AQG2w_8WX7081A/profile-framedphoto-shrink_800_800/0/1660503595302?e=1662130800&v=beta&t=emdf1w79jfz0MXdAS-xJoDhLJZrJBIFowiDBuplWDaY")

puts "destroy bookings"
Booking.destroy_all

puts "destroy all clothes"
Clothe.destroy_all

puts "destroying users"
User.destroy_all

puts "seeding users"

raphael = User.new(user_name: "Raphaël", email: "hamou.raphael@gmail.com", password: "test123456")
marwan = User.new(user_name: "Marwan", email: "marwan@gmail.com", password: "test123456")
clara = User.new(user_name: "Clara", email: "clara@gmail.com", password: "test123456")
thomas = User.new(user_name: "Thomas", email: "t.perez2513@gmail.com", password: "test123456")

raphael.photo.attach(io: raphael_picture, filename: 'raphael_picture.jpg')
raphael.save
marwan.photo.attach(io: marwan_picture, filename: 'marwan_picture.jpg')
marwan.save
clara.photo.attach(io: clara_picture, filename: 'clara_picture.jpg')
clara.save
thomas.photo.attach(io: thomas_picture, filename: 'thomas_picture.jpg')

puts "seeding clothes"
borat = Clothe.create!(title: "Borat", description: "Very good for warehouse", gender: "Man", size: "XL", category: "Accessories", color: "Green", address: "2 rue des veilles douves", daily_price: 2, owner: raphael);
borat.photo.attach(io: borat_pic, filename: "1640813380.jpeg")

jacket = Clothe.create!(title: "Jacket", description: "A casual jacket", gender: "Man", size: "S", category: "Jackets", color: "Blue", address: "2 rue des veilles douves", daily_price: 3, owner: marwan);
jacket.photo.attach(io: jacket_pic, filename: "1654457253.jpeg")

parka = Clothe.create!(title: "Parka", description: "A casual parka", gender: "Man", size: "M", category: "Parkas", color: "Brown", address: "2 rue des veilles douves", daily_price: 4, owner: raphael);
parka.photo.attach(io: parka_pic, filename: "1660580984.jpeg")

sweater = Clothe.create!(title: "Sweater", description: "A casual sweater", gender: "Man", size: "L", category: "Sweaters", color: "Black", address: "2 rue des veilles douves", daily_price: 7, owner: marwan);
sweater.photo.attach(io: sweater_pic, filename: "1660315349.jpeg")

cardigan = Clothe.create!(title: "Cardigan", description: "A casual cardigan", gender: "Man", size: "XL", category: "Cardigans", color: "Green", address: "2 rue des veilles douves", daily_price: 2, owner: raphael);
cardigan.photo.attach(io: cardigan_pic, filename: "1654946105.jpeg")

t_shirt = Clothe.create!(title: "T-shirt", description: "A casual t-shirt", gender: "Women", size: "XL", category: "T-shirt", color: "White", address: "2 rue des veilles douves", daily_price: 3, owner: clara);
t_shirt.photo.attach(io: tee_shirt_pic, filename: "1660819867.jpeg")

tank_top = Clothe.create!(title: "Tank-top", description: "A casual tank-top", gender: "Women", size: "S", category: "Tank top", color: "Blue", address: "2 rue des veilles douves", daily_price: 4, owner: clara);
tank_top.photo.attach(io: tank_top_pic, filename: "1657552619.jpeg")

shirt = Clothe.create!(title: "Shirt", description: "A casual shirt", gender: "Women", size: "S", category: "Shirt", color: "Pink", address: "2 rue des veilles douves", daily_price: 5, owner: clara);
shirt.photo.attach(io: shirt_pic, filename: "1656444714.jpeg")

hoodie = Clothe.create!(title: "Hoodie", description: "A casual hoodie", gender: "Women", size: "M", category: "Hoodie", color: "Green", address: "2 rue des veilles douves", daily_price: 2, owner: thomas);
hoodie.photo.attach(io: hoodie_pic, filename:"1660751547.jpeg")

crop_top = Clothe.create!(title: "Crop top", description: "A casual crop top", gender: "Women", size: "L", category: "Crop top", color: "Purple", address: "2 rue des veilles douves", daily_price: 1, owner: clara);
crop_top.photo.attach(io: crop_top_pic, filename:"1661272987.jpeg")

puts "seeding booking"

borat_booking = Booking.create!(start_date: "24/08/22", end_date: "28/08/22", total_price: 8, rating: 5, clothe: borat, renter: thomas);
crop_top_booking = Booking.create!(start_date: "25/08/22", end_date: "30/08/22", total_price: 5, rating: 3, clothe: crop_top, renter: thomas);
