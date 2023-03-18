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
  username: 'jane',
  address: '789 Maple Ave, San Francisco, CA 94102',
  phone: '555-555-1212'
)

User.create!(
  email: 'john@example.com',
  username: 'john',
  address: '456 Oak St, Los Angeles, CA 90001',
  phone: '555-555-1212'
)

# Create some reviews
Review.create!(
  rating: 4,
  comment: 'Great pizza!',
  user_id: 1,
  restaurant_id: 1,
  pizza_id: 1
)

Review.create!(
  rating: 3,
  comment: 'Decent tacos.',
  user_id: 2,
  restaurant_id: 2,
  pizza_id: 3
)

Review.create!(
  rating: 5,
  comment: 'Best pizza ever!',
  user_id: 2,
  restaurant_id: 1,
  pizza_id: 1
)

# db/seeds.rb

Pizza.create(name: "Margherita", ingredients: "Tomato sauce, mozzarella cheese, basil",restaurant_id:1)
Pizza.create(name: "Pepperoni", ingredients: "Tomato sauce, mozzarella cheese, pepperoni", restaurant_id: 1)
Pizza.create(name: "Hawaiian", ingredients: "Tomato sauce, mozzarella cheese, ham, pineapple", restaurant_id: 2)
Pizza.create(name: "Meat Lovers", ingredients: "Tomato sauce, mozzarella cheese, sausage, bacon, ham", restaurant_id: 1)
Pizza.create(name: "Veggie", ingredients: "Tomato sauce, mozzarella cheese, peppers, onions, mushrooms", restaurant_id: 2)
Pizza.create(name: "BBQ Chicken", ingredients: "BBQ sauce, mozzarella cheese, chicken, red onion, cilantro", restaurant_id: 1)
Pizza.create(name: "White Pizza", ingredients: "Olive oil, garlic, ricotta cheese, mozzarella cheese, basil", restaurant_id: 2)

# create some orders
Order.create(pizza_id: 1, user_id: 1, restaurant_id: 1, size: "Large", toppings: "Mushrooms, onions")
Order.create(pizza_id: 2, user_id: 2, restaurant_id: 2, size: "Medium", toppings: "Peppers, olives")
Order.create(pizza_id: 1, user_id: 1, restaurant_id: 2, size: "Small", toppings: "Pepperoni")

puts 'finished seeding'
