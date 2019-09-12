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


#tayler = User.create!(first_name:"Tayler", last_name:"Johnson", address:"16 rua Gloria", photo: open('https://res.cloudinary.com/dpdpg5yxx/image/upload/v1568302192/tayler_brunoh.jpg'), email:"tjohnson@gmail.com", password:"123456")
#puts 'Hello'
#joseph = User.create!(first_name:"Joseph", last_name:"Scemama", address:"20 rua barao", photo: 'https://res.cloudinary.com/dpdpg5yxx/image/upload/v1568302192/joseph_myzstf.jpg', email:"j.scemamma@gmail.com", password:"12345678")
#refai = Cook.create!(first_name:"Mohammed", last_name:"Refai", address:"20 rua barao de guaratiba", photo: open('https://res.cloudinary.com/dpdpg5yxx/image/upload/v1568302192/refai_xjq14f.jpg'), email:"refai@gmail.com", password:"12345678910")
#constance = Cook.create!(first_name:"Constance", last_name:"Graftieaux", address:"200 Rua Barão de Guaratiba", photo: open('https://res.cloudinary.com/dpdpg5yxx/image/upload/v1568302193/constance_qenmir.jpg'), email:"constance@gmail.com", password:"123456")
paolo = Cook.create!(first_name:"Paolo", last_name:"Matei", address:"47 rua voluntarios de patria", photo: open('https://res.cloudinary.com/dpdpg5yxx/image/upload/v1568310973/italian_cook_wpkide.jpg'), email:"paolomatei@gmail.com", password:"123456")

pasta = Meal.create!(category: "Italian", title: "Pasta vongole", description: "One bite will transport you back to childhood", price: 10, quantity: 2, photo: open('https://res.cloudinary.com/dpdpg5yxx/image/upload/v1568310973/vongole_tyrnqf.jpg'), cook: paolo)
#fries = Meal.create!(category: "French", title: "Steak frites", description: "The perfect way to turn dinner into a celebration", price: 18, quantity: 1, photo: open('https://res.cloudinary.com/dpdpg5yxx/image/upload/v1568302025/steak_ejl174.jpg'), cook: constance)
#puts 'World'
#Meal.create!(category: "American", title: "Burger", description: "Best burger ever", price: 14, quantity: 5, photo: open('https://res.cloudinary.com/dpdpg5yxx/image/upload/v1568298149/tq59hzxplikdgxgixszz.jpg'), cook: constance)
#Meal.create!(category: "Japanese", title: "Sushi", description: "Best sushi ever", price: 18, quantity: 45, photo: open('https://res.cloudinary.com/dpdpg5yxx/image/upload/v1568298762/bysego3n00ahdwdvbnx8.jpg'), cook: paolo)
#Meal.create!(category: "Spanish", title: "Paella", description: "Best paella ever", price: 18, quantity: 45, photo: open('https://res.cloudinary.com/dpdpg5yxx/image/upload/v1568298988/chvz9fiftfpzkcm1vmbf.jpg'), cook: constance)
#Meal.create!(category: "Italian", title: "Risotto", description: "Best Risotto ever", price: 18, quantity: 45, photo: open('https://res.cloudinary.com/dpdpg5yxx/image/upload/v1568302026/risotto_hrywhy.jpg'), cook: constance)
#Meal.create!(category: "French", title: "Navarin d'agneau", description: "Best navarin d'agneau ever", price: 18, quantity: 45, photo: open('https://res.cloudinary.com/dpdpg5yxx/image/upload/v1568302024/navarin_bnaf1p.jpg'), cook: refai)
#Meal.create!(category: "Italian", title: "Lasagna", description: "Best Lasagna ever", price: 18, quantity: 45, photo: open('https://res.cloudinary.com/dpdpg5yxx/image/upload/v1568302024/lasagnas_kl2eu1.jpg'), cook: constance)
#Meal.create!(category: "Japanese", title: "Miso soup", description: "Lorem ipsum dolor sit amet, consectetur adipisc.", price: 18, quantity: 45, photo: open('https://res.cloudinary.com/dpdpg5yxx/image/upload/v1568302024/miso_zgcblw.jpg'), cook: constance)
#Meal.create!(category: "Brazilian", title: "Pao de quejo", description: "Lorem ipsum dolor sit amet, consectetur adipiscing eli", price: 18, quantity: 45, photo: open('https://res.cloudinary.com/dpdpg5yxx/image/upload/v1568302027/pao_yhekuq.jpg'), cook: paolo)
#Meal.create!(category: "Brazilian", title: "Empanadas", description: "Lorem ipsum dolor sit amet, consectetur adipiscing eli", price: 18, quantity: 45, photo: open('https://res.cloudinary.com/dpdpg5yxx/image/upload/v1568302030/empanadas_pdgjs9.jpg'), cook: constance)


#order = Order.create(time:Time.now, user:User.last, meal:fries, quantity:4, rating:5)
#order = Order.create(time:Time.now, user:User.last, meal:fries, quantity:4, rating:2)

