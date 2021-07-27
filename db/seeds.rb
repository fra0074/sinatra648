require "faker"

Restaurant.destroy_all

10.times do
  Restaurant.create(
    name: Faker::Restaurant.name,
    address: Faker::Address.city,
    rating: rand(1..5),
  )
end
