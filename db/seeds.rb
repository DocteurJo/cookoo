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


tayler = User.create!(first_name:"Tayler", last_name:"Johnson", address:"Ladeira da Gloria", photo:"https://upload.wikimedia.org/wikipedia/commons/7/75/Joseph_Morgan_at_PaleyFest_2014.jpg", email:"tjohnson@gmail.com", password:"123456789")
michael = Cook.create!(first_name:"Michael", last_name:"Scott", address:"R. do Catete, 120 ", photo:"https://upload.wikimedia.org/wikipedia/en/d/dc/MichaelScott.png", email:"michael@gmail.com", password:"scranton")
dwight = Cook.create!(first_name:"Dwight", last_name:"Schrute", address:"Praia de Botafogo, 96", photo:"https://upload.wikimedia.org/wikipedia/en/c/cd/Dwight_Schrute.jpg", email:"schrute@gmail.com", password:"beetsfarm")
jim = Cook.create!(first_name:"Jim", last_name:"Halpert", address:"R. Mena Barreto, 143", photo:"https://en.wikipedia.org/wiki/File:John_Krasinski_and_Josh_Wood_(cropped).jpg", email:"jim@gmail.com", password:"pamisfam")
pam = Cook.create!(first_name:"Pam", last_name:"Beesly", address:"Praia de Botafogo, 400", photo:"https://en.wikipedia.org/wiki/File:Jenna_Fischer_May08_cropped.jpg", email:"pam@gmail.com", password:"jimisfam")
walter = Cook.create!(first_name:"Walter", last_name:"White", address:"R. Murtinho Nobre, 169", photo:"https://www.biography.com/.image/t_share/MTE5NTU2MzE2NjQ3NjIyMTU1/85th-annual-academy-awards---arrivals.jpg", email:"walter@gmail.com", password:"theonethatknocks")
jesse = Cook.create!(first_name:"Jesse", last_name:"Pinkman", address:"R. das Laranjeiras, 374", photo:"https://ksassets.timeincuk.net/wp/uploads/sites/46/2015/08/aaron-paul-920x920.jpg", email:"jesse@gmail.com", password:"leavemealone")
cook = Cook.create!(first_name:"Mohammed", last_name:"Refai", address:"Av. Pres. Vargas, 2863", photo:"https://nortonhealthcare.com/wp-content/uploads/Mostafa-O.-El-Refai-MD-1.jpg", email:"refai@gmail.com", password:"12345678910")
pinkman = Cook.create!(first_name:"Jesse", last_name:"Pinkman", address:"Av. Brasil, 3141", photo:"https://ksassets.timeincuk.net/wp/uploads/sites/46/2015/08/aaron-paul-920x920.jpg", email:"pinkman@gmail.com", password:"crystalmeth")
heisenberg = Cook.create!(first_name:"Walter", last_name:"White", address:"Rua Conde de Bonfim, 656", photo:"https://ksassets.timeincuk.net/wp/uploads/sites/46/2015/08/aaron-paul-920x920.jpg", email:"pinkman@gmail.com", password:"crystalmeth")
constance = User.create!(first_name:"Constance", last_name:"Graftieaux", address:"Av. Bartolomeu Mitre, 1314 ", photo:"https://upload.wikimedia.org/wikipedia/commons/7/75/Joseph_Morgan_at_PaleyFest_2014.jpg", email:"constance@hotmail.com", password:"123456")


pasta = Meal.create!(category: "Italian", title: "Pasta vongole", description: "One bite will transport you back to childhood", price: 10, quantity: 2, photo: "https://flockler.com/thumbs/sites/192/one_pot_wonders_6_153_img_s1200x630_c1960x1144_l0x825.jpg", cook: constance)
fries = Meal.create!(category: "French", title: "Steak frites", description: "The perfect way to turn dinner into a celebration", price: 18, quantity: 1, photo: "https://s3.amazonaws.com/pixtruder/original_images/2f470c0731c648d949fab9bc7548f68a03f68b87", cook: constance)
burger = Meal.create!(category: "American", title: "Burger", description: "Best burger ever", price: 14, quantity: 5, photo: "https://tmbidigitalassetsazure.blob.core.windows.net/secure/RMS/attachments/37/1200x1200/exps28800_UG143377D12_18_1b_RMS.jpg", cook: constance)
sushi = Meal.create!(category: "Japanese", title: "Sushi", description: "Best sushi ever", price: 18, quantity: 45, photo: "https://www.thespruceeats.com/thmb/IyxiJdbwFaixy4iolNYTLjBmW_w=/4288x2848/filters:fill(auto,1)/kimbap-korean-sushi-rolls-2118795-Hero-5b7dbdd346e0fb00250718b8.jpg", cook: constance)
paella = Meal.create!(category: "Spanish", title: "Paella", description: "Best paella ever", price: 18, quantity: 45, photo: "https://cdn-image.myrecipes.com/sites/default/files/styles/4_3_horizontal_-_900x675/public/1551740522/0867_180612_DuPree_MyRecipe_Traditional%20Spanish%20Paella_6996%20copy.jpg?itok=sHKREFL0", cook: constance)
risotto = Meal.create!(category: "Italian", title: "Risotto", description: "Best Risotto ever", price: 18, quantity: 45, photo: "https://thebusybaker.ca/wp-content/uploads/2018/03/easy-mushroom-risotto-fbigBEST.jpg", cook: constance)
navarin = Meal.create!(category: "French", title: "Navarin d'agneau", description: "Best navarin d'agneau ever", price: 18, quantity: 45, photo: "https://static.cuisineaz.com/400x320/i140902-.jpeg", cook: constance)
Meal.create!(category: "Italian", title: "Lasagna", description: "Best Lasagna ever", price: 18, quantity: 45, photo: "https://www.thewholesomedish.com/wp-content/uploads/2018/07/Best-Lasagna-550.jpg", cook: constance)
Meal.create!(category: "Japanese", title: "Miso soup", description: "Lorem ipsum dolor sit amet, consectetur adipisc.", price: 18, quantity: 45, photo: "https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/miso-soup-horizontal-jpg-1529350400.jpg", cook: constance)
Meal.create!(category: "Brazilian", title: "Pao de quejo", description: "Lorem ipsum dolor sit amet, consectetur adipiscing eli", price: 18, quantity: 45, photo: "https://www.thespruceeats.com/thmb/KCvypsvSDtJcg7K4GKE5gKGTLHc=/4000x3000/smart/filters:no_upscale()/pao-de-queijo-brazilian-cheese-bread-3028981-hero-01-350503d3d0304dee952f75f6cca3fe8f.jpg", cook: cook)
Meal.create!(category: "Brazilian", title: "Empanadas", description: "Lorem ipsum dolor sit amet, consectetur adipiscing eli", price: 18, quantity: 45, photo: "https://img.sodelicious.recipes/wp-content/uploads/2018/06/06-02-2018-R4-magazine-var1-Homemade-Empanadas.jpg", cook: constance)
Meal.create!(category: "Japanese", title: "Miso soup", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit", price: 18, quantity: 45, photo: "https://flockler.com/thumbs/sites/192/one_pot_wonders_6_153_img_s1200x630_c1960x1144_l0x825.jpg", cook: constance)
Meal.create!(category: "Japanese", title: "Miso soup", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit", price: 18, quantity: 45, photo: "https://flockler.com/thumbs/sites/192/one_pot_wonders_6_153_img_s1200x630_c1960x1144_l0x825.jpg", cook: constance)
Meal.create!(category: "Japanese", title: "Miso soup", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit", price: 18, quantity: 45, photo: "https://flockler.com/thumbs/sites/192/one_pot_wonders_6_153_img_s1200x630_c1960x1144_l0x825.jpg", cook: constance)
Meal.create!(category: "Japanese", title: "Miso soup", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit", price: 18, quantity: 45, photo: "https://flockler.com/thumbs/sites/192/one_pot_wonders_6_153_img_s1200x630_c1960x1144_l0x825.jpg", cook: constance)
Meal.create!(category: "Japanese", title: "Miso soup", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit", price: 18, quantity: 45, photo: "https://flockler.com/thumbs/sites/192/one_pot_wonders_6_153_img_s1200x630_c1960x1144_l0x825.jpg", cook: constance)


order = Order.create(time:Time.now, user:User.last, meal:fries, quantity:4, rating:5, review: "Amazing food")
order = Order.create(time:Time.now, user:User.last, meal:fries, quantity:4, rating:2, review: "No ketchup included")
order = Order.create(time:Time.now, user:User.last, meal:fries, quantity:2, rating:3, review: "Seems to be like home")
order = Order.create(time:Time.now, user:User.last, meal:fries, quantity:2, rating:1, review: "Terrible")
