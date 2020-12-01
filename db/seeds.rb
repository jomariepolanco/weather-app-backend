# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'json'

# puts "Destroying seeds"
# City.destroy_all
puts "Destroying users"
User.destroy_all
puts "Destroying user_cities"
UserCity.destroy_all

file = File.open('/Users/chrisclark/Flatiron/code/Mod3/project/weather-app-backend/db/city.list.json')
# /Users/joeyp/Development/Flatiron/code/mod-3-project/weather-app/weather-app-backend/db/city.list.json

# cities = JSON.parse(file.read)

# puts "Creating cities...13 min"
# cities.each do |city|
#   City.create(name: city["name"], state: city["state"], country: city["country"], 
#   lat: city["coord"]["lat"], lon: city["coord"]["lon"], search_id: city["id"])
# end

puts "Creating Users"
User.create!(name: "Jomarie", username: "itsjomarie", phone_number: "7327630322")
User.create!(name: "Genevieve", username: "genevieve", phone_number: "2015554785")


puts "Creating User_Cities"
UserCity.create!(user: User.all.sample , city: City.all.sample , want_texts: false)
UserCity.create!(user: User.all.sample , city: City.all.sample , want_texts: false)
UserCity.create!(user: User.all.sample , city: City.all.sample , want_texts: false)
UserCity.create!(user: User.all.sample , city: City.all.sample , want_texts: false)
UserCity.create!(user: User.all.sample , city: City.all.sample , want_texts: false)
UserCity.create!(user: User.all.sample , city: City.all.sample , want_texts: false)
UserCity.create!(user: User.all.sample , city: City.all.sample , want_texts: false)
UserCity.create!(user: User.all.sample , city: City.all.sample , want_texts: false)
UserCity.create!(user: User.all.sample , city: City.all.sample , want_texts: false)
UserCity.create!(user: User.all.sample , city: City.all.sample , want_texts: false)
UserCity.create!(user: User.all.sample , city: City.all.sample , want_texts: false)
# {"id"=>8260265, "name"=>"Buutuo", "state"=>"", "country"=>"LR", "coord"=>{"lon"=>-8.3428, "lat"=>6.8275}},