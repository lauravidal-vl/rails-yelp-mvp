# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

bristol = Restaurant.new
bristol.save

puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
restaurants_attributes = [
  {
    name:         'Dishoom',
    address:      '7 Boundary St, London E2 7JE',
    phone_number:  '06 07 08 09 01',
    category:        "belgian"
  },
  {
    name:         'Pizza East',
    address:      '56A Shoreditch High St, London E1 6PQ',
    phone_number:  '06 07 08 09 02',
    category:        "italian"
  },
  {
    name:         'Aloy Thai',
    address:      'Rue Matabiau',
    phone_number:  '06 07 08 09 09',
    category:        "chinese"
  },
  {
    name:         'French burger',
    address:      'Rue de Toulouse',
    phone_number:  '07 07 08 09 02',
    category:        "french"
  },
  {
    name:         'Sushi bar',
    address:      'Rue de Toyko',
    phone_number:  '06 10 08 09 02',
    category:        "japanese"
  },
]
Restaurant.create!(restaurants_attributes)
puts 'Finished!'
