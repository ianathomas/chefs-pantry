# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
ingredient1 = Ingredient.create!(name: "Tomato, Crushed", ingredient_type: "Vegetable, Canned", image_url: "tomato.jpg")
ingredient2 = Ingredient.create!(name: "Garlic, Fresh", ingredient_type: "Vegetable", image_url: "garlic.jpg")
ingredient3 = Ingredient.create!(name: "Olive Oil", ingredient_type: "Oil", image_url: "oliveoil.jpg")

user1 = User.create!(name: "Randy", email: "randy.com", password_digest: "password", image_url: "randy.jpg")
user2 = User.create!(name: "Herb", email: "herb.com", password_digest: "password", image_url: "herb.jpg")
user3 = User.create!(name: "Ian", email: "ian.com", password_digest: "password", image_url: "ian.jpg")

mypantryitem1 = MyPantryItem.create!(ingredient_id: 1, user_id: 1, amount: "5")
mypantryitem2 = MyPantryItem.create!(ingredient_id: 2, user_id: 1, amount: "10")
mypantryitem3 = MyPantryItem.create!(ingredient_id: 3, user_id: 2, amount: "15")