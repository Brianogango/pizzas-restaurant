# db/seeds.rb
puts 'seeding seeds'
# Create some restaurants

 Restaurant.create!(
  name: 'Joe\'s Pizza',
  address: '123 Main St, New York, NY 10001',
  cuisine: 'Italian'
)

Restaurant.create!(
  name: 'Taco Palace',
  address: '456 Elm St, Los Angeles, CA 90001',
  cuisine: 'Mexican'
)

# Create some users
User.create!(
  email: 'jane@example.com',
username: 'jane'
)

User.create!(
  email: 'john@example.com',
  username: 'john'
)

# Create some reviews
Review.create!(
  rating: 4,
  comment: 'Great pizza!',
  user_id: 1,
  restaurant_id: 1
)

Review.create!(
  rating: 3,
  comment: 'Decent tacos.',
  user_id: 2,
  restaurant_id: 2
)

Review.create!(
  rating: 5,
  comment: 'Best pizza ever!',
  user_id: 2,
  restaurant_id: 1
)

# db/seeds.rb

Pizza.create(name: "Margherita", ingredients: "Tomato sauce, mozzarella cheese, basil",restaurant_id:1)
Pizza.create(name: "Pepperoni", ingredients: "Tomato sauce, mozzarella cheese, pepperoni", restaurant_id: 1)
Pizza.create(name: "Hawaiian", ingredients: "Tomato sauce, mozzarella cheese, ham, pineapple", restaurant_id: 2)
# and so on...

# create some orders
Order.create(pizza_id: 1, user_id: 1, restaurant_id: 1, size: "Large", toppings: "Mushrooms, onions")
Order.create(pizza_id: 2, user_id: 2, restaurant_id: 2, size: "Medium", toppings: "Peppers, olives")
Order.create(pizza_id: 1, user_id: 1, restaurant_id: 2, size: "Small", toppings: "Pepperoni")

puts 'finished seeding'