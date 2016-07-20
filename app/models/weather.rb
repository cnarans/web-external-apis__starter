require "httparty"
require "pry"

require_relative "secret.rb"

# returns array of weather information from forecast.io
#
# location - longitude/latitude of weather information
#
def getWeather(location)
	info = HTTParty.get("https://api.forecast.io/forecast/#{API_KEY}/#{location}")
	return info
end

# returns a cardinal direction for the current wind bearing
#
# info - array of weather information from forecast.io
#
def windDirection(info)
	bearing =  info["daily"]["data"][0]["windBearing"]
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

# returns current weather summary
# 
# info - array of weather information from forecast.io
#
def summary(info)
	return info["currently"]["summary"]
end

# returns the current temperature
#
# info - array of weather information from forecast.io
#
def currentTemp(info)
	return info["currently"]["temperature"]
end

# returns the high temperature for the given day
#
# info - array of weather information from forecast.io
# day - days from the present with 0 = today
#
def highTemp(info, day)
	return info["daily"]["data"][day]["temperatureMin"]
end

# returns the low temperature for the given day
#
# info - array of weather information from forecast.io
# day - days from the present with 0 = today
#
def lowTemp(info, day)
	return info["daily"]["data"][day]["temperatureMax"]
end

# returns the current windspeed in mph
#
# info - array of the weather information from forecast.io
#
def windspeed(info)
	return info["currently"]["windSpeed"]
end

# returns the current humidity percentage
#
# info - array of the weather information from forecast.io
#
def humidity(info)
	return info["currently"]["humidity"]*100
end

# returns the current precipitation percentage
#
# info - array of the weather information from forecast.io
#
def precipchance(info)
	return info["currently"]["precipProbability"]*100
end

# returns the current day's sunrise time in local time HH:MM:SS
#
# info - array of the weather information from forecast.io
# day - days from the present with 0=today
#
def sunrise(info, day)
	return (Time.at(info["daily"]["data"][day]["sunriseTime"])+(@info["offset"]*3600)+18000).strftime('%H:%M:%S')
end

# returns the current day's sunset time in local time HH:MM:SS
#
# info - array of the weather information from forecast.io
# day - days from the present with 0=today
#
def sunset(info, day)
	return (Time.at(info["daily"]["data"][day]["sunsetTime"])+(@info["offset"]*3600)+18000).strftime('%H:%M:%S')
end

# returns the current apparent temperature
#
# info - array of the weather information from forecast.io
#
def apparentTemp(info)
	return info["currently"]["apparentTemperature"]
end

# returns the current precipitation intensity
#
# info - array of the weather information from forecast.io
#
def precip(info)
	return info["currently"]["precipIntensity"]
end

# returns the current barometric pressure in inches/Hg
#
# info - array of the weather information from forecast.io
#
def pressure(info)
	return (info["currently"]["pressure"]*0.02953)
end

# returns the current visibility in miles
#
# info - array of the weather information from forecast.io
#
def visibility(info)
	return info["currently"]["visibility"]
end

# returns the daily weather summary
#
# info - array of the weather information from forecast.io
#
def dailySummary(info)
	return info["daily"]["summary"]
end

# returns the temperature forcast at a given time
#
# info - array of the weather information from forecast.io
# time - time from last hour in hours
#
def tempAt(info, time)
	return info["hourly"]["data"][time]["temperature"]
end

#test = getWeather("41.2524,-95.9980")
#puts Time.at(test["currently"]["time"])
#binding.pry
#puts test["currently"]["summary"]
#puts Weather.windDirection(179.0)