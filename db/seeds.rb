# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)





require 'faker'
User.destroy_all
Category.destroy_all
Market.destroy_all
Review.destroy_all

user_1 = User.new(
  email: "Othmane.assari@lewagon.com",
  password: "123456",
  name: "Othmane",
  picture_url: "c:\\Users\\Desktop\\Documents\\Images rigolotes xD#\\VSC pic\\2.jpg",
  biography: "Hi, my name is Othmane, I am a culinary enthusiast eager to discover the many different dishes that Berlin has to offer!",
  description: "Developer in the making, Market Finance graduate",
  time_in_berlin: "1 year",
)
user_1.save!

user_2 = User.new(
  email: "Danny.todd@lewagon.com",
  password: "123456",
  name: "Danny",
  picture_url: "c:\\Users\\Desktop\\Downloads\\y1bknqoddo1xnpssjwzm.jpg",
  biography: "Hey, I'm Danny, and I love to explore new and interesting cultural dishes, but I don't like to pay premium prices. ZeitGeist is amazing!",
  description: "Coder, Medical student at SJSM",
  time_in_berlin: "4 years",
)
user_2.save!

user_3 = User.new(
  email: "Jana.tuscher@lewagon.com",
  password: "123456",
  name: "Jana",
  picture_url: "c:\\Users\\Desktop\\Downloads\\y1bknqoddo1xnpssjwzm.jpg",
  biography: "Berlin holds a special place in my heart ever since I had witnessed the fall of the Berlin Wall, and the food there is also very enjoyable",
  description: "Teacher, writer, philanthropist",
  time_in_berlin: "2 years",
)
user_3.save!
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
  description: "Moroccan food, rice, fresh fruit, Moroccan delicacies",
  category: moroccan_category,
  image_url: "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/1c/25/fa/98/mauerpark.jpg?w=1200&h=1200&s=1",
  user: user_1
)
market.save!
market = Market.new(
  name: "Thai Park",
  address: "Wilmersdorf, Berlin Germany",
  description: "street-food, fresh fruit,  bread, vegetables",
  category: thai_category,
  image_url: "https://viermalfernweh.de/wp-content/uploads/2018/09/Thaiwiese-Preu%C3%9Fenpark-Berlin-asian-food.jpg",
  user: user_3
)
market.save!
market = Market.new(
  name: "Vietnamese",
  address: "Eberswalder Str., 13355 Berlin Germany",
  description: "bánh xèo coconut pancakes, seeds, herbs, Toctoc, tofu",
  category: vietnamese_category,
  image_url: "https://s3-media0.fl.yelpcdn.com/bphoto/uN4Nv5qDbXPyqOXxGgFJ9Q/o.jpg",
  user: user_1
)
market.save!
market = Market.new(
  name: "International Street Food Market",
  address: "Courtyard of the Kulturbrauerei, Prenzlauer Berg, Berlin Germany",
  description: "International street food, bratwurst, curry-wurst, pretzels, tacos, Peruvian ceviche, Moroccan tajine, manti dumplings from Central Asia, freshly baked chimney cakes",
  category: street_category,
  image_url: "https://www.berlin.de/binaries/asset/image_assets/4409526/source/1673516849/1000x500/",
  user: user_2
)
market.save!
market = Market.new(
  name: "Bite club",
  address: "Spree, Berlin Germany",
  description: "street food, bratwurst, curry-wurst, pretzels, tacos",
  category: street_category,
  image_url: "https://biteclub.de/wp-content/uploads/2014/12/2A3A0119-1024x683.jpg",
  user: user_3
)
market.save!
market = Market.new(
  name: "Thaiwiese",
  address: "Preußenpark, Berlin Germany",
  description: "Asian street food, Thai food",
  category: thai_category,
  image_url: "https://fastly.4sqi.net/img/general/width960/151248601_QRJJ9GpVcOoBybREMu8d01SDfSUFB2Wgvv9X93L-Sok.jpg",
  user: user_1
)
market.save!
market = Market.new(
  name: "Weekly market Fehrbellinerplatz",
  address: "Fehrbelliner Platz 4, 10707 Berlin, Germany",
  description: "Local meals, Pizza, Currywurst, fresh vegetables, fruit, Turkish, Chinese, Mexican, German traditional food",
  image_url: "https://upload.wikimedia.org/wikipedia/commons/thumb/b/b0/Wilmersdorf_Fehrbelliner_Platz_Wochenmarkt-001.jpg/1600px-Wilmersdorf_Fehrbelliner_Platz_Wochenmarkt-001.jpg?20160901194700",
  category: diverse_category,
  user: user_1
)
market.save!

market = Market.new(
  name: "Street Food auf Achse",
  address: "Schönhauser Allee 38, 10435 Berlin, Germany",
  description: "Sunday afternoon outdoor market showcasing rotating food trucks and street-food stands. Pie food truck, local desserts",
  image_url: "https://directus.likealocalguide.com/assets/26f663ea-131e-494a-a8d7-3b4c76c42ae4",
  category: street_category,
  user: user_3
)
market.save!
market = Market.new(
  name: "Weekly market at Wittenbergplatz",
  address: "Wittenbergpl. 5, 10789 Berlin, Germany",
  description: "cheese, sausages, fish, meat, bread, Italian food, pasta, Turkish food vendor, vegetables, flowers",
  image_url: "https://wehco.media.clients.ellingtoncms.com/imports/adg/photos/203980372_203980372-91fc36e4a6b047018584e34fb38de27f_t800.jpg?90232451fbcadccc64a17de7521d859a8f88077d",
  category: diverse_category,
  user: user_2
)
market.save!
market = Market.new(
  name: "Kabul bazar کابل بازار",
  address: "Vulkanstraße 12c, 10367 Berlin, Germany",
  description: "All Afghan products, delicacies, desserts, spices, rugs, furniture",
  image_url: "https://s3-media0.fl.yelpcdn.com/bphoto/rnO032ykPw76iBHFfVQJcw/o.jpg",
  category: afghan_category,
  user: user_1
  )
market.save!
market = Market.new(
  name: "Boxhagener Platz Food Market",
  address: "Gärtnerstraße 23-24, 10245 Berlin, Germany",
  description: "Saturday Outdoor Market featuring fresh organic produce, street-food creations, crepes, currywurst, grilled fish, smoked meat and sausages, tomato-topped bruschetta, homemade jams",
  image_url: "https://cdn-v2.theculturetrip.com/610x407/wp-content/uploads/2021/03/ewmemb.webp",
  category: diverse_category,
  user: user_1
  )
market.save!
market = Market.new(
  name: "Berlin Village Market at Neue Heimat",
  address: "Revaler Str. 99, 10245 Berlin, Germany",
  description: "Sunday Market featuring international street-food creations, crepes, currywurst, grilled fish, smoked meat and sausages, homemade jams",
  image_url: "https://berlijn-blog.nl/wp-content/uploads/2014/08/20140809-P1020679-BerlijnBlog-Berlin-Village-Market.jpg",
  category: street_category,
  user: user_1
  )
market.save!

market = Market.new(
  name: "Green Market",
  address: "Beer garden- Zum Anleger, Kiehnwerderallee 2 12437 Berlin, Germany",
  description: "Weekly Market featuring all vegan seasonal foods, street-food creations, Vietnamese bánh xèo coconut pancakes, tofu burgers, natural waffles, non-dairy ice cream",
  image_url: "https://vegansandfriends.com/wp-content/uploads/2018/11/The-Green-Market-2018-Blick-Richtung-Eingang.jpg",
  category: diverse_category,
  user: user_1
  )
market.save!

market = Market.new(
  name: "Turkish Market- Neuköllner Wochenmärkte",
  address: "Maybachufer Kreuzberg, 12047 Berlin Germany",
  description: "Weekly Market offering Turkish traditional foods, fresh fruit and vegetables, stuffed vine leaves, goat cheese, fresh fish, sweet pastries, flowers, olive wood products",
  image_url: "http://www.urban75.org/blog/images/turkish-market-maybachufer-berlin-neukolln-03.jpg",
  category: diverse_category,
  user: user_1
  )
market.save!

market = Market.new(
  name: "Hermannplatz- Neuköllner Wochenmärkte",
  address: "Hermannplatz, 10967 Berlin Germany",
  description: "Weekday Market offering international food, fresh produce, Peruvian tamales, German wurst",
  image_url: "https://www.diemarktplaner.de/wp-content/uploads/2016/10/HER9.jpg",
  category: diverse_category,
  user: user_1
  )
market.save!

market = Market.new(
  name: "Treptower Park Riverside Promenade Food Stands",
  address: "Alt-Treptow, 28-30, 12435 Berlin Germany",
  description: "Weekly Market offering street food, Thai food, Venezuelan food, crepes, pizza, bruschetta, fish and fries, burger currywurst, vegan dishes",
  image_url: "https://www.visitberlin.de/system/files/styles/visitberlin_gallery_item_visitberlin_desktop_2x/private/image/_MG_7458_DL_PPT_0.jpg.webp?itok=LEndDffn",
  category: street_category,
  user: user_1
  )
market.save!

market = Market.new(
  name: "Neuer Market am Südstern",
  address: "Südstern 1, 10961 Berlin Germany",
  description: "Weekly Market offering fresh fruit and vegetables, street food, Roman pizza, Korean food, burgers, Latin food, Kimchi pancake, Bulgogi",
  image_url: "https://www.berlin.de/binaries/asset/image_assets/6311478/ratio_2_1/1601553765/1000x500/",
  category: street_category,
  user: user_1
  )
market.save!

market = Market.new(
  name: "Holzmarkt 25",
  address: "Holzmarktstraße 25, 10243, Berlin Germany",
  description: "Weekly Market offering wood-fired pizza, baked goods, drinks, different fun food events",
  image_url: "https://images.squarespace-cdn.com/content/v1/5d44ca6e28f0880001b7a6a2/a754d5a2-5339-45d1-ac8f-598f0660196a/275401261_4695223500586038_988506171671290108_n.jpg?format=2500w",
  category: diverse_category,
  user: user_1
  )
market.save!

market = Market.new(
  name: "Ökomarkt am Kollwitzplatz",
  address: "Wörther Str., 10435 Berlin Germany",
  description: "Weekly Eco Market offering organic fruit and vegetables, bottled and packaged food, diverse food dishes, Falafel, plants",
  image_url: "https://www.visitberlin.de/system/files/styles/visitberlin_bleed_header_visitberlin_desktop_2x/private/image/Oekomarkt_Kollwitzplatz_c_Gruene_Liga_Foto_Claudia_Kapfer_web.jpg.webp?h=c673cd1c&itok=HL8SUzRD",
  category: diverse_category,
  user: user_1
  )
market.save!

market = Market.new(
  name: "Berliner Bauernmarkt",
  address: "Alt-Lübars 12, Reinickendorf, Berlin Germany",
  description: "Weekly Market offering organic fruit and vegetables, regional specialties, delicatessen, French bakery products, salami, tantuni, baked pork, tarte flambée",
  image_url: "https://www.tip-berlin.de/wp-content/uploads/2022/03/imago0116647010h-scaled.jpg",
  category: diverse_category,
  user: user_1
  )
market.save!
