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
market = Market.new(
  name: "Mauerpark",
  address: "Eberswalder Str., 13355 Berlin Germany",
  description: "iranian cuisine, rice",
  category: moroccan_category,
  # image_url: "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/13/83/60/3d/pix.jpg?w=900&h=500&s=1",
  user: user
)
market.save!
