# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require "open-uri"

borat_pic = URI.open("https://images1.vinted.net/t/03_00604_6sMU9RpKoVXrRqGodu9YR8Ee/f800/1640813380.jpeg?s=7d4394dd2a008835e4a96e166650f544dee738e0")
jacket_pic = URI.open("https://images1.vinted.net/t/01_00676_xP7bqu4a2iFLa5gbbF7VLGg7/f800/1654457253.jpeg?s=7d93193e4a3f5e5b77847c19f4f14a84ad223202")
parka_pic = URI.open("https://images1.vinted.net/t/01_01021_RDRUrnnZMfnjbnJxNM56zL6R/f800/1660580984.jpeg?s=3e4f284c94a75ce5449c98a6a2d22def4716e0c2")
sweater_pic = URI.open("https://images1.vinted.net/t/02_01105_K8AYEbxCY2X4WfvcRhAr9EgP/f800/1660315349.jpeg?s=eba1342cb612015caf7c805903db689edddfffd7")
cardigan_pic = URI.open("https://images1.vinted.net/t/02_00950_8anzni6vZ6EZ2DYvEsYFXosJ/f800/1654946105.jpeg?s=f6e5cfa8f3aafd1cb975635b32b868b6c5e04346")
tee_shirt_pic = URI.open("https://images1.vinted.net/t/03_01fab_p4PX6qeuv8q2kpVhsT9msokE/f800/1660819867.jpeg?s=41681c2506cf89dccd0a44d76edce0e7b25b64fe")
tank_top_pic = URI.open("https://images1.vinted.net/t/02_024bb_6QdufbWfYavmoTHTiaMFtPVs/f800/1657552619.jpeg?s=2bbbd353d759bfec5268d4e353f96640b59e7f84")
shirt_pic = URI.open("https://images1.vinted.net/t/02_00d38_vcqvUFs69SwcKeLACjy8x34G/f800/1656444714.jpeg?s=e993a72a66df59728da55de5b77098da0f8cd910")
hoodie_pic = URI.open("https://images1.vinted.net/t/02_0134a_KW14AxswrFpTTDKMjxBzkDT6/f800/1660751547.jpeg?s=7daf3d06892a05bed7accf2e96f5fc7e276c2b95")
crop_top_pic = URI.open("https://images1.vinted.net/t/02_01b45_dBD72uG1XZ464sotTeH1Vv9M/f800/1661272987.jpeg?s=0f999871c1dbbd196d792ed30600694934190ef6")

raphael_picture = URI.open("https://media-exp1.licdn.com/dms/image/C4E03AQGoff3WMy8Nqw/profile-displayphoto-shrink_200_200/0/1658735391018?e=1665014400&v=beta&t=tj3_20ppo26RfcTRLunmDZCxkbcCmGt08bPVVQkpznQ")
marwan_picture = URI.open("https://upload.wikimedia.org/wikipedia/commons/0/04/Marwan_Mohsen.jpg")
clara_picture = URI.open("https://static1.purepeople.com/articles/0/36/60/50/@/5278196-clara-luciani-arrivees-au-defile-de-mo-624x600-2.jpg")

thomas_picture = URI.open("https://scontent-cdg2-1.xx.fbcdn.net/v/t39.30808-6/280010191_2469513089858366_6669507285336492253_n.jpg?_nc_cat=107&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=Slb5pmcO6TkAX8QMILw&_nc_ht=scontent-cdg2-1.xx&oh=00_AT-NtCCmHK_hK_KhxkWKIgQz3-QiIJGIscPwpNQuZod1gQ&oe=6308BC53")

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

hoodie = Clothe.create!(title: "Hoodie", description: "A casual hoodie", gender: "Women", size: "M", category: "Hoodie", color: "Green", address: "2 rue des veilles douves", daily_price: 2, owner: clara);
hoodie.photo.attach(io: hoodie_pic, filename:"1660751547.jpeg")

crop_top = Clothe.create!(title: "Crop top", description: "A casual crop top", gender: "Women", size: "L", category: "Crop top", color: "Purple", address: "2 rue des veilles douves", daily_price: 1, owner: clara);
crop_top.photo.attach(io: crop_top_pic, filename:"1661272987.jpeg")

borat_booking = Booking.create!(start_date: "24/08/22", end_date: "28/08/22", total_price: 8, rating: 5, clothe: borat, renter: thomas);
crop_top_booking = Booking.create!(start_date: "25/08/22", end_date: "30/08/22", total_price: 5, rating: 3, clothe: crop_top, renter: thomas);
