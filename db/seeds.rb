# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
# Restaurant.all.destroy
# Pizza.all.destroy
# RestaurantPizza.all.destroy

Restaurant.create([{name: 'Pizza Palace', address: 'Nairobi'},{name: 'Italian Kitchen', address: 'Westlands'},{name: 'Italian Kitchen', address: 'Kasarani'}])
Pizza.create([{name: 'Margherita', ingredients: 'Tomato, Mozzarella, Basil'}, {name: 'Pepperoni', ingredients: 'Tomato, Mozzarella, Pepperoni'},{name: 'Hawaiian', ingredients: 'Tomato, Mozzarella, Ham, Pineapple'}])
RestaurantPizza.create([{price: 25, pizza_id: 1, restaurant_id: 1}, {price: 30, pizza_id: 2, restaurant_id: 2}, {price: 15, pizza_id: 3, restaurant_id: 3}])