# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# make a web request to the api
response = HTTP.get("http://api.openweathermap.org/data/2.5/weather?q=syracuse&appid=")

# get the data back
weather_data = response.parse
p response.parse
# pick out the data that you want from the response
the_location = weather_data["name"]
p the_location

wind = weather_data["wind"]["speed"]
p wind
description = weather_data["weather"][0]["description"]
p description
min_temp = weather_data["main"]["temp_min"]
p min_temp
max_temp = weather_data["main"]["temp_max"]
p max_temp
# max_temp



# save that data in your db

Forecast.create!(
  location: the_location,
  wind: wind,
  description: description,
  min_temp: min_temp,
  max_temp: max_temp,
)