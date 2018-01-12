# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


require 'open-uri'
require 'json'

puts "Creating users database..."
10.times do

url = 'https://randomuser.me/api/'
user_serialized = open(url).read
users_list = JSON.parse(user_serialized)

  user = User.new(
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name,
  email: Faker::Internet.email,
  avatar: users_list["results"][0]["picture"]["large"])
  user.username = user.first_name
  user.password = user.first_name
  user.save
end
