puts "Destroying database..."

Restaurant.destroy_all

puts "Create restaurants..."

100.times do |restaurant|
  Restaurant.create(
    name: Faker::Company.name,
    address: Faker::Address.full_address,
    rating: rand(1..5),
    chef_name: Faker::Name.name
  )
end

puts "Finised process..."
