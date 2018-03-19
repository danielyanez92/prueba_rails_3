# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# Admin.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?
30.times do |i|
  User.create(
    email: "email@email#{i}.com",
    password: 123456)
  end
20.times do |i|
 Company.create(
   name: Faker::Company.name)
end

250.times do |i|
 Complain.create(
   company: Company.order("RANDOM()").first,
   user: User.order("RANDOM()").first,
   content: Faker::Lorem.paragraph)
end
