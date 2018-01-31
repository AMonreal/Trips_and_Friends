# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

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
trip1 = Trip.new(id: "1", title: "A Trip to Russia", description: "Five days in Saint Petersburg", beginning_date: "25/12/2017", end_date: "30/12/2017", activities: "yoga")
trip1.save!

trip2 = Trip.new(id: "2", title: "A Trip to Normandy", description: "Two days in Camembert", beginning_date: "14/01/2018", end_date: "16/01/2018", activities: "Riding on horseback")
trip2.save!
puts "Finished!"


