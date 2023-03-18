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

puts 'finished seeding'