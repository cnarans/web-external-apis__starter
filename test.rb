require "httparty"
require "pry"

require_relative "secret.rb"

weather = HTTParty.get("https://api.forecast.io/forecast/#{API_KEY}/41.2524,-95.9980")

#binding.pry

puts weather["currently"]["summary"]