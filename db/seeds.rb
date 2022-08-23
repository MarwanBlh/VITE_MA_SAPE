# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require "open-uri"

# jacket = URI.open("data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7")
# parka = URI.open("data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7")
# sweater = URI.open("data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7")
# cardigan = URI.open("data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7")
# tee-shirt = URI.open("data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7")
# tank-top = URI.open("data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7")
# shirt = URI.open("data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7")
# hoodie = URI.open("data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7")
# crop_top = URI.open("data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7")

raphael_picture = URI.open("https://media-exp1.licdn.com/dms/image/C4E03AQGoff3WMy8Nqw/profile-displayphoto-shrink_200_200/0/1658735391018?e=1665014400&v=beta&t=tj3_20ppo26RfcTRLunmDZCxkbcCmGt08bPVVQkpznQ")
marwan_picture = URI.open("https://upload.wikimedia.org/wikipedia/commons/0/04/Marwan_Mohsen.jpg")
clara_picture = URI.open("https://static1.purepeople.com/articles/0/36/60/50/@/5278196-clara-luciani-arrivees-au-defile-de-mo-624x600-2.jpg")
# thomas_picture = URI.open("https://scontent-cdg2-1.xx.fbcdn.net/v/t39.30808-6/280010191_2469513089858366_6669507285336492253_n.jpg?_nc_cat=107&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=Slb5pmcO6TkAX8QMILw&_nc_ht=scontent-cdg2-1.xx&oh=00_AT-NtCCmHK_hK_KhxkWKIgQz3-QiIJGIscPwpNQuZod1gQ&oe=6308BC53")

puts "destroying users"
User.destroy_all

puts "seeding users"

raphael = User.new(user_name: "Raphaël", email: "hamou.raphael@gmail.com", password: "199877")
marwan = User.new(user_name: "Marwan", email: "marwan@gmail.com", password: "test")
clara = User.new(user_name: "Clara", email: "clara@gmail.com", password: "test")

raphael.photo.attach(io: raphael_picture, filename: 'raphael_picture.jpg')
raphael.save
marwan.photo.attach(io: marwan_picture, filename: 'marwan_picture.jpg')
marwan.save
clara.photo.attach(io: clara_picture, filename: 'clara_picture.jpg')
clara.save

thomas_user = User.new(user_name: "Thomas", email: "t.perez2513@gmail.com", password: "251198")

puts "seeding clothes"
# borat_picture = URI.open("data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7")
borat = Clothe.new(title: "Borat", description: "Very good for warehouse", gender: "Male", size: "XL", category: "Accessories", color: "Green", address: "2 rue des veilles douves", daily_price: 1, owner: raphael);
jacket = Clothe.new(title: "Jacket", description: "", gender: "Male", size: "S", category: "Jackets", color: "Black", address: "2 rue des veilles douves", daily_price: 1, owner: marwan);
parka = Clothe.new(title: "Parka", description: "A casual tee-shirt", gender: "Male", size: "M", category: "Parkas", color: "White", address: "2 rue des veilles douves", daily_price: 1, owner: clara);
sweater = Clothe.new(title: "Sweater", description: "A casual shirt", gender: "Male", size: "L", category: "Sweaters", color: "Blue", address: "2 rue des veilles douves", daily_price: 1, owner: raphael);
cardigan = Clothe.new(title: "Cardigan", description: "A casual socket", gender: "Male", size: "XL", category: "Cardigans", color: "Pink", address: "2 rue des veilles douves", daily_price: 1, owner: marwan);
t_shirt = Clothe.new(title: "T-shirt", description: "A casual hoodie", gender: "Female", size: "XXL", category: "T-shirts", color: "Yellow", address: "2 rue des veilles douves", daily_price: 1, owner: clara);
tank_top = Clothe.new(title: "Tank-top", description: "A casual blazer", gender: "Female", size: "S", category: "Tank-top", color: "Orange", address: "2 rue des veilles douves", daily_price: 1, owner: raphael);
shirt = Clothe.new(title: "Shirt", description: "A casual shoe", gender: "Female", size: "S", category: "Shirt", color: "Brown", address: "2 rue des veilles douves", daily_price: 1, owner: marwan);
hoodie = Clothe.new(title: "Hoodie", description: "A casual suit", gender: "Female", size: "M", category: "Hoodie", color: "Red", address: "2 rue des veilles douves", daily_price: 1, owner: clara);
crop_top = Clothe.new(title: "Crop top", description: "A casual jacket", gender: "Female", size: "L", category: "Crop top", color: "Black", address: "2 rue des veilles douves", daily_price: 1, owner: raphael);

borat_booking = Booking.new(start_date: "24/08/22", end_date: "28/08/22", total_price: 5, rating: 5, clothe: borat);
