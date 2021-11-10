CATEGORY = %w[chinese italian japanese french belgian].freeze

puts 'Creating restaurants...'

5.times do
  restaurant = Restaurant.create!(
    name: Faker::Restaurant.name,
    address: Faker::Address.street_name,
    category: CATEGORY.sample
  )
  puts "Created restaurant with id: #{restaurant.id}"
end

puts 'Finished creating restaurants!'
