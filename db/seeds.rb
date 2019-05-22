# This file should contain all the record creation needed to seed the database
# with its default values.
# The data can then be loaded with the rails db:seed command (or created
# alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' },
# { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

categories = %w[chinese italian japanese french belgian]

puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
restaurants_attributes = [{
  name: 'Dishoom',
  address: '7 Boundary St, London E2 7JE',
  category: categories.sample
}, {
  name:         'Pizza East',
  address:      '56A Shoreditch High St, London E1 6PQ',
  category: categories.sample
}, {
  name: 'La Mamma',
  address: 'Place St. Josse',
  category: categories.sample
}, {
  name:         'La Piola Pizza',
  address:      'St. Josse corner',
  category: categories.sample
}, {
  name: 'La Cantinetta',
  address: 'Matongé',
  category: categories.sample
}]

Restaurant.create!(restaurants_attributes)
puts 'Finished!'
