# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'faker'
user = User.new(
  email: Faker::Internet.email,
  password: Faker::Internet.password
)
user.save!

moroccan_category = Category.new(
  name: "moroccan"
)
moroccan_category.save!

turkish_category = Category.new(
  name: "turkish"
)
turkish_category.save!

thai_category = Category.new(
  name: "thai"
)
thai_category.save!

Veitnamese_category = Category.new(
  name: "vietnamese"
)
veitnamese_category.save!

street_category = Category.new(
  name: "street"
)
street_category.save!

market = Market.new(
  name: "Mauerpark",
  address: "Eberswalder Str., 13355 Berlin Germany",
  description: "Moroccan food, rice, fresh friut, Moroccan delicacies",
  category: moroccan_category,
  image_url: "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/13/83/60/3d/pix.jpg?w=900&h=500&s=1",
  user: user
)
market.save!

market = Market.new(
  name: "Turkish Market",
  address: "Maybachufer canal, Berlin Germany",
  description: "pungent spices, köfte, hummus, pillowvy breads",
  category: turkish_category,
  image_url: "https://cdn-v2.theculturetrip.com/350x233/wp-content/uploads/2021/03/bmj9t0.webp",
  user: user
)
market.save!

market = Market.new(
  name: "Thai Park",
  address: "Wilmersdorf, Berlin Germany",
  description: "street-food, fresh fruit,  bread, vegtables",
  category: thai_category,
  image_url: "https://cdn-v2.theculturetrip.com/350x233/wp-content/uploads/2021/03/mxt8yt.webp",
  user: user
)
market.save!

market = Market.new(
  name: "Veitnamese",
  address: "Eberswalder Str., 13355 Berlin Germany",
  description: "bánh xèo coconut pancakes, seeds, herbs, Toctoc, tofu",
  category: veitnamese_category,
  image_url: "https://cdn-v2.theculturetrip.com/350x233/wp-content/uploads/2021/03/w2fcfg.webp",
  user: user
)
market.save!

market = Market.new(
  name: "Street food",
  address: "Prenalauer Berg, Berlin Germany",
  description: "street food, bratwurst, curry-wurst, pretzles, tacos",
  category: street_category,
  image_url: "https://www.top10berlin.de/sites/top10berlin.de/files/styles/list_image/public/location/mainimages/2015/03/09/berlin-street-food-auf-achse-kulturbrauerei_fish_art_betreiber_02_800x400.jpg?itok=Dmi6rzLK",
  user: user
)
market.save!

market = Market.new(
  name: "Bite club",
  address: "Spree, Berlin Germany",
  description: "street food, bratwurst, curry-wurst, pretzles, tacos",
  category: street_category,
  image_url: "https://www.top10berlin.de/sites/top10berlin.de/files/styles/list_image/public/location/mainimages/2015/05/18/bite_club_street_food_berlin-dpa.jpg?itok=-7ShEXX1",
  user: user
)
market.save!

market = Market.new(
  name: "Thaiwiese",
  address: "Preußenpark, Berlin Germany",
  description: "Asian street food",
  category: thai_category,
  image_url: "https://www.top10berlin.de/sites/top10berlin.de/files/styles/list_image/public/location/mainimages/2016/03/18/thaiwiese-preussenpark_dpa.jpg?itok=mF3DW4qm",
  user: user
)
market.save!
