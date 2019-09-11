# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Order.destroy_all
Meal.destroy_all
User.destroy_all


tayler = User.create!(first_name:"Tayler", last_name:"Johnson", address:"16 rua Gloria", photo:"https://upload.wikimedia.org/wikipedia/commons/7/75/Joseph_Morgan_at_PaleyFest_2014.jpg", email:"tjohnson@gmail.com", password:"123456")
joseph = User.create!(first_name:"Joseph", last_name:"Scemama", address:"20 rua barao", photo:"https://pixel.nymag.com/imgs/fashion/daily/2019/03/06/06-taylor-swift-2.w330.h412.jpg", email:"j.scemamma@gmail.com", password:"12345678")
cook = Cook.create!(first_name:"Mohammed", last_name:"Refai", address:"20 rua barao de guaratiba", photo:"https://nortonhealthcare.com/wp-content/uploads/Mostafa-O.-El-Refai-MD-1.jpg", email:"refai@gmail.com", password:"12345678910")

meal = Meal.create!(category: "Italian", title: "Pasta vongole", description: "Best pasta ever", price: 10, quantity: 2, photo: "https://flockler.com/thumbs/sites/192/one_pot_wonders_6_153_img_s1200x630_c1960x1144_l0x825.jpg", cook: cook)
Meal.create!(category: "French", title: "Steak frites", description: "Best frite ever", price: 18, quantity: 45, photo: "https://s3.amazonaws.com/pixtruder/original_images/2f470c0731c648d949fab9bc7548f68a03f68b87", cook: cook)
Meal.create!(category: "American", title: "Burger", description: "Best burger ever", price: 14, quantity: 5, photo: "https://tmbidigitalassetsazure.blob.core.windows.net/secure/RMS/attachments/37/1200x1200/exps28800_UG143377D12_18_1b_RMS.jpg", cook: cook)
Meal.create!(category: "Japanese", title: "Sushi", description: "Best sushi ever", price: 18, quantity: 45, photo: "https://www.thespruceeats.com/thmb/IyxiJdbwFaixy4iolNYTLjBmW_w=/4288x2848/filters:fill(auto,1)/kimbap-korean-sushi-rolls-2118795-Hero-5b7dbdd346e0fb00250718b8.jpg", cook: cook)
Meal.create!(category: "Spanish", title: "Paella", description: "Best paella ever", price: 18, quantity: 45, photo: "https://cdn-image.myrecipes.com/sites/default/files/styles/4_3_horizontal_-_900x675/public/1551740522/0867_180612_DuPree_MyRecipe_Traditional%20Spanish%20Paella_6996%20copy.jpg?itok=sHKREFL0", cook: cook)
Meal.create!(category: "Italian", title: "Risotto", description: "Best Risotto ever", price: 18, quantity: 45, photo: "https://thebusybaker.ca/wp-content/uploads/2018/03/easy-mushroom-risotto-fbigBEST.jpg", cook: cook)
Meal.create!(category: "French", title: "Navarin d'agneau", description: "Best navarin d'agneau ever", price: 18, quantity: 45, photo: "https://static.cuisineaz.com/400x320/i140902-.jpeg", cook: cook)
Meal.create!(category: "Italian", title: "Lasagna", description: "Best Lasagna ever", price: 18, quantity: 45, photo: "https://www.thewholesomedish.com/wp-content/uploads/2018/07/Best-Lasagna-550.jpg", cook: cook)
Meal.create!(category: "Japanese", title: "Miso soup", description: "Lorem ipsum dolor sit amet, consectetur adipisc.", price: 18, quantity: 45, photo: "https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/miso-soup-horizontal-jpg-1529350400.jpg", cook: cook)
Meal.create!(category: "Brazilian", title: "Pao de quejo", description: "Lorem ipsum dolor sit amet, consectetur adipiscing eli", price: 18, quantity: 45, photo: "https://www.thespruceeats.com/thmb/KCvypsvSDtJcg7K4GKE5gKGTLHc=/4000x3000/smart/filters:no_upscale()/pao-de-queijo-brazilian-cheese-bread-3028981-hero-01-350503d3d0304dee952f75f6cca3fe8f.jpg", cook: cook)
Meal.create!(category: "Brazilian", title: "Empanadas", description: "Lorem ipsum dolor sit amet, consectetur adipiscing eli", price: 18, quantity: 45, photo: "https://img.sodelicious.recipes/wp-content/uploads/2018/06/06-02-2018-R4-magazine-var1-Homemade-Empanadas.jpg", cook: cook)
Meal.create!(category: "Japanese", title: "Miso soup", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit", price: 18, quantity: 45, photo: "https://flockler.com/thumbs/sites/192/one_pot_wonders_6_153_img_s1200x630_c1960x1144_l0x825.jpg", cook: cook)
Meal.create!(category: "Japanese", title: "Miso soup", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit", price: 18, quantity: 45, photo: "https://flockler.com/thumbs/sites/192/one_pot_wonders_6_153_img_s1200x630_c1960x1144_l0x825.jpg", cook: cook)
Meal.create!(category: "Japanese", title: "Miso soup", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit", price: 18, quantity: 45, photo: "https://flockler.com/thumbs/sites/192/one_pot_wonders_6_153_img_s1200x630_c1960x1144_l0x825.jpg", cook: cook)
Meal.create!(category: "Japanese", title: "Miso soup", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit", price: 18, quantity: 45, photo: "https://flockler.com/thumbs/sites/192/one_pot_wonders_6_153_img_s1200x630_c1960x1144_l0x825.jpg", cook: cook)
Meal.create!(category: "Japanese", title: "Miso soup", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit", price: 18, quantity: 45, photo: "https://flockler.com/thumbs/sites/192/one_pot_wonders_6_153_img_s1200x630_c1960x1144_l0x825.jpg", cook: cook)

order = Order.create(time:Time.now, user:User.last, meal:Meal.first, quantity:4, rating:3)
