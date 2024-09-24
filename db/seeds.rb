# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
# db/seeds.rb
# db/seeds.rb

restaurants = [
  { name: 'Dragon Palace', address: '123 Beijing Rd, Beijing, China', category: 'chinese' },
  { name: 'Pasta Delights', address: '456 Florence St, Florence, Italy', category: 'italian' },
  { name: 'Sushi Central', address: '789 Osaka Blvd, Osaka, Japan', category: 'japanese' },
  { name: 'Le Bistro', address: '101 Paris Ave, Paris, France', category: 'french' },
  { name: 'Belgian Waffle House', address: '202 Brussels Rd, Brussels, Belgium', category: 'belgian' }
]

restaurants.each do |restaurant_data|
  Restaurant.find_or_create_by!(name: restaurant_data[:name]) do |restaurant|
    restaurant.address = restaurant_data[:address]
    restaurant.category = restaurant_data[:category]
  end
end
