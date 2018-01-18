# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# require 'open-uri'
# require 'json'

# puts "Creating users database..."
# 10.times do

# url = 'https://randomuser.me/api/'
# user_serialized = open(url).read
# users_list = JSON.parse(user_serialized)

#   user = User.new(
#   first_name: Faker::Name.first_name,
#   last_name: Faker::Name.last_name,
#   email: Faker::Internet.email,
#   avatar: users_list["results"][0]["picture"]["large"])
#   user.username = user.first_name
#   user.password = user.first_name
#   user.save
# end

# users = User.create([
#   {first_name: 'Ariane'}, {last_name: 'Monreal'}, {email: 'arianemonreal@hotmail.fr'}])
# users.save!
puts "destroying old data..."
  # Like.destroy_all
  Trip.destroy_all
  User.destroy_all
puts "database clean..."

puts 'Creating users...'
user1 = User.new(id: "1", first_name: "Ariane", last_name: "Monreal", email: "arianemonreal0@gmail.com", password: "ariane", password_confirmation: "ariane")
user1.save!

user2 = User.new(id: "2", first_name: "Marie", last_name: "Penicaut", email: "mariepenicaut@gmail.com", password: "MarieMarie", password_confirmation: "MarieMarie")
user2.save!
puts 'Finished!'

puts 'Creating trips...'
trip1 = Trip.new(id: "1", beginning_date: "25/12/2017", end_date: "30/12/2017", location_id: "1", user_id: "1")
trip1.save!

trip2 = Trip.new(id: "2", beginning_date: "14/01/2018", end_date: "16/01/2018", location_id: "2", user_id: "1")
trip2.save!
puts "Finished!"
