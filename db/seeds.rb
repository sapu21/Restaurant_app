# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#
User.create!(email: 'sapu@example.com',
             password: 'password',
             password_confirmation: 'password',
             admin: true)

Category.create!(heading: 'Pizza', body: 'Its a good dough', display: true)
Category.create!(heading: 'Pasta', body: 'Its a good dough', display: true)
Category.create!(heading: 'Dessert', body: 'Its a good dough', display: true)


10.times do |i|
  pizza= Product.create(
      name: "Pizza",
      description: "Lorem ipsum bbq chocken",
      price: 11.99,
      catering: true,
      category: Category.find(1)
  )
  pasta= Product.create(
      name: "Pasta",
      description: "Lorem ipsum bbq chocken",
      price: 7.99,
      catering: true,
      category: Category.find(2)
  )
  dessert= Product.create(
      name: "Icecream",
      description: "Lorem ipsum bbq chocken",
      price: 3.00,
      catering: true,
      category: Category.find(3)
  )
  pizza.image.attach(io: open('https://picsum.photos/1920/1080'), filename: "#{i}_pizza_image.jpg")
  pasta.image.attach(io: open('https://picsum.photos/1920/1080'), filename: "#{i}_pasta_image.jpg")
  dessert.image.attach(io: open('https://picsum.photos/1920/1080'), filename: "#{i}_dessert_image.jpg")
  if i == 5
    pizza.featured = true
    pasta.featured = true
    dessert.featured = true
  end
  pizza.save
  pasta.save
  dessert.save

end
