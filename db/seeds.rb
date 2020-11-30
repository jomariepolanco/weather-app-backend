# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'json'

file = File.open('/Users/chrisclark/Flatiron/code/Mod3/project/weather-app-backend/db/city.list.json')

cities = JSON.parse(file.read)

cities.each do |city|
  City.create(name: city["name"], state: city["state"], country: city["country"], 
  lat: city["coord"]["lat"], lon: city["coord"]["lon"], search_id: city["id"])
end

# {"id"=>8260265, "name"=>"Buutuo", "state"=>"", "country"=>"LR", "coord"=>{"lon"=>-8.3428, "lat"=>6.8275}},