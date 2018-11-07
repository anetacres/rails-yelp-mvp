# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
restaurants_attributes = [
  {
    name:         'Dishoom',
    address:      '7 Boundary St, London E2 7JE',
    phone_number: '06521202',
    category:     'chinese'
  },
  {
    name:         'Pizza East',
    address:      '56A Shoreditch High St, London E1 6PQ',
    phone_number: '0124589',
    category:     'italian'
  },
  {
    name:         'One',
    address:      '21 Rozana St, Suwalki',
    phone_number: '02358457',
    category:     'french'
  },
  {
    name:         'Two',
    address:      '40 av Lombez, Toulouse',
    phone_number: '02457891',
    category:     'french'
  },
  {
    name:         'Three',
    address:      '8 Laval St, Montreal',
    phone_number: '024578965',
    category:     'japanese'
  }
]
Restaurant.create!(restaurants_attributes)
puts 'Finished!'
