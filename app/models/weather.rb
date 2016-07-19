require "httparty"
require "pry"

require_relative "secret.rb"

#weather = HTTParty.get("https://api.forecast.io/forecast/#{API_KEY}/41.2524,-95.9980")
#binding.pry
#puts weather["currently"]["summary"]

class Weather

	def Weather.getWeather(location)
		info = HTTParty.get("https://api.forecast.io/forecast/#{API_KEY}/#{location}")
		return info
	end

	def Weather.windDirection(bearing)
		if bearing>348.75&&bearing<11.25
			direction = "N"
		elsif bearing<33.75
			direction = "NNE"
		elsif bearing<56.25
			direction = "ENE"
		elsif bearing<78.75
			direction = "NE"
		elsif bearing<101.25
			direction = "E"
		elsif bearing<123.75
			direction = "ESE"
		elsif bearing<146.25
			direction = "SE"
		elsif bearing<168.75
			direction = "SSE"
		elsif bearing<191.25
			direction = "S"
		elsif bearing<213.75
			direction = "SSW"
		elsif bearing<236.25
			direction = "SW"
		elsif bearing<258.75
			direction = "WSW"
		elsif bearing<281.25
			direction = "W"
		elsif bearing<303.75
			direction = "WNW"
		elsif bearing<326.25
			direction = "NW"
		else
			direction = "NNW"
		end
		return direction
	end

end

#test = Weather.getWeather("41.2524,-95.9980")
#binding.pry
#puts test["currently"]["summary"]
puts Weather.windDirection(179.0)