class Api::WeatherController < ApplicationController
  def index
    response = HTTP.get("http://api.openweathermap.org/data/2.5/weather?q=syracuse&appid=")
    temperature = response.parse

    real_temperature = temperature["main"]["temp"]

    city = temperature["name"]

    binding.pry
    
    render json: {message: "it is #{real_temperature} degrees in #{city} right now"}
  end
end
