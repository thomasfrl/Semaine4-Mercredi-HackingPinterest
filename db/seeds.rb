# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
=begin
require 'faker'
10.times do
    u = User.create!(name: Faker::Name.name)
end

40.times do
    p = Pin.create!(url: Faker::Internet.url, user_id: rand(1..10))
end

20.times do
    c = Comment.create!(content: Faker::HarryPotter.quote, user_id: rand(1..10))
end
=end
20.times do |index|
    Comment.find(index+1).update( pin_id: rand(1..40))
end