# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

raphael = User.new(user_name: "Raphaël", user_mail: "hamou.raphael@gmail.com", password: "199877", profile_picture: "https://avatars.githubusercontent.com/u/107106167?v=4");
thomas = User.new(user_name: "Thomas", user_mail: "t.perez2513@gmail.com", password: "251198", profile_picture: "https://scontent-cdg2-1.xx.fbcdn.net/v/t39.30808-6/280010191_2469513089858366_6669507285336492253_n.jpg?_nc_cat=107&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=Slb5pmcO6TkAX8QMILw&_nc_ht=scontent-cdg2-1.xx&oh=00_AT-NtCCmHK_hK_KhxkWKIgQz3-QiIJGIscPwpNQuZod1gQ&oe=6308BC53");

borat = Clothe.new(title: "Borat", description: "Very good for warehouse", gender: "Male", size: "XL", category: "Accessories", color: "Green", picture_url: "https://m.media-amazon.com/images/I/71oFK9wmskL._AC_UX425_.jpg", address: "2 rue des veilles douves", daily_price: 1, owner: owner);
borat_booking = Booking.new(start_date: "24/08/22", end_date: "28/08/22", total_price: 5, rating: 5, clothe: borat);
