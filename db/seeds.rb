# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'faker'
User.destroy_all

user_1 = User.new(
  email: "Othmane.assari@lewagon.com",
  password: "123456",
  name: "Othmane",
  picture_url: "c:\\Users\\Desktop\\Documents\\Images rigolotes xD#\\VSC pic\\2.jpg",
  biography: "Hi, my name is Othmane, I am a culinary enthusiasm eager to discover what kind of dishes Berlin has to offer !",
  description: "Developer in the making,Market Finance graduate",
  time_in_berlin: "1 year",
)
user.save!

diverse_category = Category.new(
  name: "diverse"
)
diverse_category.save!

afghan_category = Category.new(
  name: "afghan"
)
afghan_category.save!

moroccan_category = Category.new(
  name: "moroccan"
)
moroccan_category.save!

thai_category = Category.new(
  name: "thai"
)
thai_category.save!

vietnamese_category = Category.new(
  name: "vietnamese"
)
vietnamese_category.save!

street_category = Category.new(
  name: "street"
)
street_category.save!

market = Market.new(
  name: "Mauerpark",
  address: "Eberswalder Str., 13355 Berlin Germany",
  description: "Moroccan food, rice, fresh friut, Moroccan delicacies",
  category: moroccan_category,
  #image_url: "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/13/83/60/3d/pix.jpg?w=900&h=500&s=1",
  user: user_1
)
market.save!

market.save!
market = Market.new(
  name: "Thai Park",
  address: "Wilmersdorf, Berlin Germany",
  description: "street-food, fresh fruit,  bread, vegtables",
  category: thai_category,
  #image_url: "https://cdn-v2.theculturetrip.com/350x233/wp-content/uploads/2021/03/mxt8yt.webp",
  user: user_3
)
market.save!

market = Market.new(
  name: "Veitnamese",
  address: "Eberswalder Str., 13355 Berlin Germany",
  description: "bánh xèo coconut pancakes, seeds, herbs, Toctoc, tofu",
  category: vietnamese_category,
  #image_url: "https://cdn-v2.theculturetrip.com/350x233/wp-content/uploads/2021/03/w2fcfg.webp",
  user: user_1
)
market.save!

market = Market.new(
  name: "Street food",
  address: "Prenzlauer Berg, Berlin Germany",
  description: "street food, bratwurst, curry-wurst, pretzles, tacos",
  category: street_category,
  #image_url: "https://www.top10berlin.de/sites/top10berlin.de/files/styles/list_image/public/location/mainimages/2015/03/09/berlin-street-food-auf-achse-kulturbrauerei_fish_art_betreiber_02_800x400.jpg?itok=Dmi6rzLK",
  user: user_2
)
market.save!

market = Market.new(
  name: "Bite club",
  address: "Spree, Berlin Germany",
  description: "street food, bratwurst, curry-wurst, pretzles, tacos",
  category: street_category,
  #image_url: "https://www.top10berlin.de/sites/top10berlin.de/files/styles/list_image/public/location/mainimages/2015/05/18/bite_club_street_food_berlin-dpa.jpg?itok=-7ShEXX1",
  user: user_3
)
market.save!

market = Market.new(
  name: "Thaiwiese",
  address: "Preußenpark, Berlin Germany",
  description: "Asian street food",
  category: thai_category,
  # image_url: "https://www.top10berlin.de/sites/top10berlin.de/files/styles/list_image/public/location/mainimages/2016/03/18/thaiwiese-preussenpark_dpa.jpg?itok=mF3DW4qm",
  user: user_1
)
market.save!


market = Market.new(
  name: "Weekly market Fehrbellinerplatz",
  address: "Fehrbelliner Platz 4, 10707 Berlin, Germany",
  description: "Local meals, Pizza, Currywurst, fresh vegtables, fruit, Turkish, Chinese, Mexican, German traditional food.",
  category: diverse_category,
  user: user
)
market.save!

market = Market.new(
  name: "Street Food auf Achse",
  address: "Schönhauser Allee 38, 10435 Berlin, Germany",
  description: "Sunday afternoon outdoor market showcasing rotating food trucks & street-food stands. Pie food truck, local deserts",
  category: diverse_category,
  user: user
)
market.save!

market = Market.new(
  name: "Weekly market at Wittenbergplatz",
  address: "Wittenbergpl. 5, 10789 Berlin, Germany",
  description: "cheese, sausages, fish, meat, bread, italian food, pasta, Turkish food vendor, vegtables, flowers",
  category: diverse_category,
  user: user
  )
market.save!

market = Market.new(
  name: "Donnerstags Bauermarkt",
  address: "Hackescher Markt, 10178 Berlin, Germany",
  description: "deserts, music, Indian food, ice-cream",
  category: diverse_category,
  user: user
)
market.save!


market = Market.new(
  name: "Kabul bazar کابل بازار",
  address: "Vulkanstraße 12c, 10367 Berlin, Germany",
  description: "All afghan products, delicacies, deserts, spices, rugs, furniture",
  category: afghan_category,
  user: user
  )
market.save!
