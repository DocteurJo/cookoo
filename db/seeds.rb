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
pinkman = Cook.create!(first_name:"Jesse", last_name:"Pinkman", address:"Av. Brasil, 3141", photo:"https://ksassets.timeincuk.net/wp/uploads/sites/46/2015/08/aaron-paul-920x920.jpg", email:"pinkman@mail.com", password:"crystalmeth")
heisenberg = Cook.create!(first_name:"Walter", last_name:"White", address:"Rua Conde de Bonfim, 656", photo:"https://ksassets.timeincuk.net/wp/uploads/sites/46/2015/08/aaron-paul-920x920.jpg", email:"pinkman@gmail.com", password:"crystalmeth")
constance = User.create!(first_name:"Constance", last_name:"Graftieaux", address:"Av. Bartolomeu Mitre, 1314 ", photo:"https://upload.wikimedia.org/wikipedia/commons/7/75/Joseph_Morgan_at_PaleyFest_2014.jpg", email:"constance@hotmail.com", password:"123456")


pasta = Meal.create!(category: "Italian", title: "Peppered Shrimp Alfredo", description: "Yummy shrimp in an Alfredo sauce, with portobello mushrooms and red peppers.", price: 10, quantity: 2, photo: "https://images.media-allrecipes.com/userphotos/720x405/4095462.jpg", cook: walter)
fries = Meal.create!(category: "French", title: "Classic Steak au Poivre", description: "Classic steak au poivre is a simple dish of seared peppercorn-crusted steaks with a creamy pan sauce.", price: 18, quantity: 1, photo: "https://www.seriouseats.com/2017/12/20171127-steak-au-poivre-vicky-wasik-16.jpg", cook: pinkman)
burger = Meal.create!(category: "American", title: "Buffalo Chicken Burgers", description: "Charge up your chicken burgers with a serious dose of hot sauce. Cool the fire with the celery-blue cheese mayo.", price: 14, quantity: 5, photo: "https://www.seriouseats.com/recipes/images/2013/06/20130627-257426-buffalo-chicken-burgers.jpg", cook: jim)
ramen = Meal.create!(category: "Japanese", title: "The Ultimate Rich and Creamy Vegan ", description: "It has a rich, creamy broth that's layered with flavor and thick enough to coat the noodles as they're slurped from the bowl", price: 18, quantity: 45, photo: "https://www.seriouseats.com/recipes/images/2015/02/20150215-vegan-ramen-recipe-01.jpg", cook: pam)
paella = Meal.create!(category: "Spanish", title: "Grilled Paella Mixta", description: "Paella mixta, which combines seafood and meat, is, as any Spaniard will tell you, not a traditional type of paella", price: 18, quantity: 45, photo: "https://www.seriouseats.com/2019/07/20190618-grilled-paella-vicky-wasik-14.jpg", cook: dwight)
risotto = Meal.create!(category: "Italian", title: "Creamy Risotto alla Milanese ", description: "Saffron-scented risotto alla milanese is one of the most luxurious—and simplest—of risottos", price: 18, quantity: 45, photo: "https://www.seriouseats.com/recipes/images/2016/03/20160302-risotto-milanese-vicky-wasik-15.jpg", cook: jesse)
duck = Meal.create!(category: "French", title: "Duck à l'Orange Recipe", description: "Sauce for this duck à l'orange is designed to walk the tightrope of flavor, perfectly suited to cutting through the richness of the roasted duck.", price: 18, quantity: 45, photo: "https://static.cuisineaz.com/400x320/i140902-.jpeg", cook: dwight)
lasagna = Meal.create!(category: "Italian", title: "World's Best Lasagna", description: "Creamy, cheesy, spinach lasagna flavored with a hint of nutmeg and a combination of white sauce and fresh ricotta.", price: 18, quantity: 45, photo: "https://www.thewholesomedish.com/wp-content/uploads/2018/07/Best-Lasagna-550.jpg", cook: jim)
oyakodon = Meal.create!(category: "Japanese", title: "Oyakodon (Japanese Chicken and Egg Rice Bowl) ", description: "Super popular both at restaurants and at home, oyakodon (Japanese chicken and egg rice bowl) is sort of like the pizza of Japan", price: 18, quantity: 45, photo: "https://www.seriouseats.com/recipes/images/2016/08/20160802-oyakodon-4.jpg", cook: pinkman)
pao = Meal.create!(category: "Brazilian", title: "Pão de Queijo", description: "Pão de queijo, Portuguese for cheese bread, are tiny cheese puffs made with yuca flour and a slightly sour, tangy fresh cheese. They smell awesome when they're hot.", price: 18, quantity: 45, photo: "https://www.thespruceeats.com/thmb/KCvypsvSDtJcg7K4GKE5gKGTLHc=/4000x3000/smart/filters:no_upscale()/pao-de-queijo-brazilian-cheese-bread-3028981-hero-01-350503d3d0304dee952f75f6cca3fe8f.jpg", cook: pam)
tortilla = Meal.create!(category: "Spanish", title: "Tortilla Española (Spanish Egg and Potato Omelette) ", description: "Tortilla española, one of Spain's most famous and beloved national dishes, is nothing more than egg, potato, and onion cooked in olive oil. ", price: 18, quantity: 45, photo: "https://www.seriouseats.com/recipes/images/2016/06/20160603-tortilla-espanola-vicky-wasik-16.jpg", cook: dwight)
pesto = Meal.create!(category: "Italian", title: "Pesto alla Trapanese (Sicilian Pesto With Almonds and Tomatoes)", description: "Pesto alla trapanese is Sicily's answer to Liguria's more famous basil-rich pesto sauce. ", price: 18, quantity: 45, photo: "https://www.seriouseats.com/2018/06/20180612-pasta-pesto-alla-trapanese-vicky-wasik-19.jpg", cook: michael)
wings = Meal.create!(category: "American", title: "Sous Vide Buffalo Chicken Wings Recipe", description: "The low-and-slow cook in a hot water bath makes the meat incredibly tender and juicy without drying it out", price: 18, quantity: 45, photo: "https://www.seriouseats.com/2019/04/20190322-sous-vide-wings-joel-russo-16.jpg", cook: heisenberg)
salmon = Meal.create!(category: "Japanese", title: "Easy Teriyaki-Glazed Salmon", description: "Perfect pan-seared salmon that have crisp skin, moist and tender flesh, and fat that has been fully rendered.", price: 18, quantity: 45, photo: "https://www.seriouseats.com/recipes/images/2016/06/20160702-salmon-rice-bowl3.jpg", cook: jim)
croquette = Meal.create!(category: "Spanish", title: "Chicken Croquette", description: "These croquettes are bound with a thick, buttery cross between béchamel sauce and and eggless pâte a choux dough. ", price: 18, quantity: 45, photo: "https://www.seriouseats.com/images/2014/02/20140224-284251-cook-the-book-chicken-croquettes.jpg", cook: dwight)
cacio = Meal.create!(category: "Italian", title: "Cacio e Pepe", description: "A creamy, emulsified sauce that coats each strand of spaghetti with flavor. ", price: 18, quantity: 45, photo: "https://www.seriouseats.com/recipes/images/2016/02/20160220-cacio-e-pepe-21.jpg", cook: heisenberg)

fooder = [pasta, fries, burger, ramen, paella, risotto, duck, lasagna, oyakodon, pao, tortilla, pesto, wings, salmon, croquette, cacio].to_a
rater = [1,2,3,4,5]
usered = [tayler, constance].to_a

order = Order.create(time:Time.now, user:usered.sample, meal:fooder.sample, quantity:rater.sample, rating:rater.sample)
order = Order.create(time:Time.now, user:User.last, meal:fries, quantity:4, rating:2)
order = Order.create(time:Time.now, user:User.first, meal:fooder.sample, quantity:4, rating:2)
order = Order.create(time:Time.now, user:usered.sample, meal:fooder.sample, quantity:rater.sample, rating:rater.sample)
order = Order.create(time:Time.now, user:usered.sample, meal:fooder.sample, quantity:rater.sample, rating:rater.sample)
order = Order.create(time:Time.now, user:usered.sample, meal:fooder.sample, quantity:rater.sample, rating:rater.sample)
order = Order.create(time:Time.now, user:usered.sample, meal:fooder.sample, quantity:rater.sample, rating:rater.sample)
order = Order.create(time:Time.now, user:usered.sample, meal:fooder.sample, quantity:rater.sample, rating:rater.sample)
order = Order.create(time:Time.now, user:usered.sample, meal:fooder.sample, quantity:rater.sample, rating:rater.sample)
order = Order.create(time:Time.now, user:usered.sample, meal:fooder.sample, quantity:rater.sample, rating:rater.sample)
order = Order.create(time:Time.now, user:usered.sample, meal:fooder.sample, quantity:rater.sample, rating:rater.sample)
order = Order.create(time:Time.now, user:usered.sample, meal:fooder.sample, quantity:rater.sample, rating:rater.sample)
order = Order.create(time:Time.now, user:usered.sample, meal:fooder.sample, quantity:rater.sample, rating:rater.sample)
order = Order.create(time:Time.now, user:usered.sample, meal:fooder.sample, quantity:rater.sample, rating:rater.sample)
order = Order.create(time:Time.now, user:usered.sample, meal:fooder.sample, quantity:rater.sample, rating:rater.sample)
order = Order.create(time:Time.now, user:usered.sample, meal:fooder.sample, quantity:rater.sample, rating:rater.sample)
order = Order.create(time:Time.now, user:usered.sample, meal:fooder.sample, quantity:rater.sample, rating:rater.sample)
order = Order.create(time:Time.now, user:usered.sample, meal:fooder.sample, quantity:rater.sample, rating:rater.sample)
order = Order.create(time:Time.now, user:usered.sample, meal:fooder.sample, quantity:rater.sample, rating:rater.sample)
order = Order.create(time:Time.now, user:usered.sample, meal:fooder.sample, quantity:rater.sample, rating:rater.sample)
order = Order.create(time:Time.now, user:usered.sample, meal:fooder.sample, quantity:rater.sample, rating:rater.sample)
order = Order.create(time:Time.now, user:usered.sample, meal:fooder.sample, quantity:rater.sample, rating:rater.sample)
order = Order.create(time:Time.now, user:usered.sample, meal:fooder.sample, quantity:rater.sample, rating:rater.sample)
order = Order.create(time:Time.now, user:usered.sample, meal:fooder.sample, quantity:rater.sample, rating:rater.sample)
order = Order.create(time:Time.now, user:usered.sample, meal:fooder.sample, quantity:rater.sample, rating:rater.sample)
order = Order.create(time:Time.now, user:usered.sample, meal:fooder.sample, quantity:rater.sample, rating:rater.sample)
order = Order.create(time:Time.now, user:usered.sample, meal:fooder.sample, quantity:rater.sample, rating:rater.sample)
order = Order.create(time:Time.now, user:usered.sample, meal:fooder.sample, quantity:rater.sample, rating:rater.sample)
order = Order.create(time:Time.now, user:usered.sample, meal:fooder.sample, quantity:rater.sample, rating:rater.sample)
order = Order.create(time:Time.now, user:usered.sample, meal:fooder.sample, quantity:rater.sample, rating:rater.sample)
order = Order.create(time:Time.now, user:usered.sample, meal:fooder.sample, quantity:rater.sample, rating:rater.sample)
order = Order.create(time:Time.now, user:usered.sample, meal:fooder.sample, quantity:rater.sample, rating:rater.sample)
order = Order.create(time:Time.now, user:usered.sample, meal:fooder.sample, quantity:rater.sample, rating:rater.sample)
order = Order.create(time:Time.now, user:usered.sample, meal:fooder.sample, quantity:rater.sample, rating:rater.sample)
order = Order.create(time:Time.now, user:usered.sample, meal:fooder.sample, quantity:rater.sample, rating:rater.sample)
order = Order.create(time:Time.now, user:usered.sample, meal:fooder.sample, quantity:rater.sample, rating:rater.sample)
order = Order.create(time:Time.now, user:usered.sample, meal:fooder.sample, quantity:rater.sample, rating:rater.sample)
order = Order.create(time:Time.now, user:usered.sample, meal:fooder.sample, quantity:rater.sample, rating:rater.sample)

