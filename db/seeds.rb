# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

10.times do 
    city_list = City.create!(name: Faker::Nation.capital_city, zip_code: Faker::Address.zip_code)
end

10.times do 
    tag_list = Tag.create!(title:"#"+Faker::Hipster.word)
end

10.times do
    user_list = User.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, description: Faker::Lorem.sentence(word_count: 5), email: Faker::Internet.email, age: rand(10..99), city: City.find(rand(1..10)))
end

20.times do
    gossip_list = Gossip.create!(title: Faker::Hipster.sentence(word_count: 3), content: Faker::Lorem.sentence(word_count: 20), user: User.find(rand(1..10)))
end

3.times do
    pm_list = PrivateMessage.create!(content: Faker::Hipster.paragraph(sentence_count: 4), user: User.find(rand(1..10)))
end

puts "base de donnée chargée"



