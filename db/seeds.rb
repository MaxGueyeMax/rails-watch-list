# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or create!d alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Destroying seeds..."
Movie.destroy_all
List.destroy_all
Bookmark.destroy_all

puts "Creating movies..."
wonder = Movie.create!(title: "Wonder Woman 1984", overview: "Wonder Woman comes into conflict with the Soviet Union during the Cold War in the 1980s", poster_url: "https://image.tmdb.org/t/p/original/8UlWHLMpgZm9bx6QYh0NFoq67TZ.jpg", rating: 6.9)
shawshank = Movie.create!(title: "The Shawshank Redemption", overview: "Framed in the 1940s for double murder, upstanding banker Andy Dufresne begins a new life at the Shawshank prison", poster_url: "https://image.tmdb.org/t/p/original/q6y0Go1tsGEsmtFryDOJo3dEmqu.jpg", rating: 8.7)
Movie.create!(title: "Titanic", overview: "101-year-old Rose DeWitt Bukater tells the story of her life aboard the Titanic.", poster_url: "https://image.tmdb.org/t/p/original/9xjZS2rlVxm8SFx8kPC3aIGCOYQ.jpg", rating: 7.9)
Movie.create!(title: "Ocean's Eight", overview: "Debbie Ocean, a criminal mastermind, gathers a crew of female thieves to pull off the heist of the century.", poster_url: "https://image.tmdb.org/t/p/original/MvYpKlpFukTivnlBhizGbkAe3v.jpg", rating: 7.0)

puts "Creating lists..."
horror = List.create!(name: "Horror", image_url: "https://t3.ftcdn.net/jpg/03/25/06/80/360_F_325068072_Ryr3QUrkqPL9btRL3cntBCypHVxYTqmk.jpg")

drama = List.create!(name: "Drama", image_url: "https://media.glamour.com/photos/5ec2e904af30542b4c66c451/master/w_3000,h_1621,c_limit/MCDLIWO_CO010.jpg")

comedy = List.create!(name: "Comedy", image_url: "https://presbee.com/blog/wp-content/uploads/2016/09/comedy.jpg")

puts "Creating bookmarks..."
bookmark_1 = Bookmark.create!(
  comment: "Hiiiiiiiiiii",
  movie: wonder,
  list: horror
)

bookmark_2 = Bookmark.create!(
  comment: "No way, so good",
  movie: shawshank,
  list: horror
)

puts "Seeds completed..."
