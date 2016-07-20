require 'test_helper'

class WeatherTest < Minitest::Test
  def setup
  	super
    # This setup will automatically be run before each test below.
  end

  def test_getWeather
  	result = getWeather("41.2524,-95.9980")

  	refute_nil(result)
  	refute_equal(result, "")
  end

  def test_windDirection
  	info = HTTParty.get("https://api.forecast.io/forecast/#{API_KEY}/41.2524,-95.9980")

  	result = windDirection(info)

  	refute_nil(result)
  	refute_equal(result, "")
  	assert_kind_of(String, result)
  end

  def test_summary
  	info = HTTParty.get("https://api.forecast.io/forecast/#{API_KEY}/41.2524,-95.9980")

  	result = summary(info)

  	refute_nil(result)
  	refute_equal(result, "")
  	assert_kind_of(String, result)
  end

  def test_currentTemp
  	info = HTTParty.get("https://api.forecast.io/forecast/#{API_KEY}/41.2524,-95.9980")

  	result = currentTemp(info)

  	refute_nil(result)
  	refute_equal(result, "")
  	assert_kind_of(Float, result)
  end

  def test_highTemp
  	info = HTTParty.get("https://api.forecast.io/forecast/#{API_KEY}/41.2524,-95.9980")

  	result = highTemp(info,0)

  	refute_nil(result)
  	refute_equal(result, "")
  	assert_kind_of(Float, result)
  end

  def test_lowTemp
  	info = HTTParty.get("https://api.forecast.io/forecast/#{API_KEY}/41.2524,-95.9980")

  	result = lowTemp(info,0)

  	refute_nil(result)
  	refute_equal(result, "")
  	assert_kind_of(Float, result)
  end

  def test_windspeed
  	info = HTTParty.get("https://api.forecast.io/forecast/#{API_KEY}/41.2524,-95.9980")

  	result = windspeed(info)

  	refute_nil(result)
  	refute_equal(result, "")
  	assert_kind_of(Float, result)
  end

  def test_humidity
  	info = HTTParty.get("https://api.forecast.io/forecast/#{API_KEY}/41.2524,-95.9980")

  	result = humidity(info)

  	refute_nil(result)
  	refute_equal(result, "")
  	assert_kind_of(Float, result)
  end

  def test_precipChance
  	info = HTTParty.get("https://api.forecast.io/forecast/#{API_KEY}/41.2524,-95.9980")

  	result = precipChance(info)

  	refute_nil(result)
  	refute_equal(result, "")
  	assert_kind_of(Fixnum, result)
  end

  def test_sunrise
  	info = HTTParty.get("https://api.forecast.io/forecast/#{API_KEY}/41.2524,-95.9980")

  	result = sunrise(info,0)

  	refute_nil(result)
  	refute_equal(result, "")
  	assert_kind_of(String, result)
  end

  def test_sunset
  	info = HTTParty.get("https://api.forecast.io/forecast/#{API_KEY}/41.2524,-95.9980")

  	result = sunset(info,0)

  	refute_nil(result)
  	refute_equal(result, "")
  	assert_kind_of(String, result)
  end

  def test_apparentTemp
  	info = HTTParty.get("https://api.forecast.io/forecast/#{API_KEY}/41.2524,-95.9980")

  	result = apparentTemp(info)

  	refute_nil(result)
  	refute_equal(result, "")
  	assert_kind_of(Float, result)
  end

  def test_precip
  	info = HTTParty.get("https://api.forecast.io/forecast/#{API_KEY}/41.2524,-95.9980")

  	result = precip(info)

  	refute_nil(result)
  	refute_equal(result, "")
  	assert_kind_of(Fixnum, result)
  end

  def test_pressure
  	info = HTTParty.get("https://api.forecast.io/forecast/#{API_KEY}/41.2524,-95.9980")

  	result = pressure(info)

  	refute_nil(result)
  	refute_equal(result, "")
  	assert_kind_of(Float, result)
  end

  def test_visibility
  	info = HTTParty.get("https://api.forecast.io/forecast/#{API_KEY}/41.2524,-95.9980")

  	result = visibility(info)

  	refute_nil(result)
  	refute_equal(result, "")
  	assert_kind_of(Fixnum, result)
  end

  def test_dailySummary
  	info = HTTParty.get("https://api.forecast.io/forecast/#{API_KEY}/41.2524,-95.9980")

  	result = dailySummary(info)

  	refute_nil(result)
  	refute_equal(result, "")
  	assert_kind_of(String, result)
  end

  def test_tempAt
  	info = HTTParty.get("https://api.forecast.io/forecast/#{API_KEY}/41.2524,-95.9980")

  	result = tempAt(info,0)

  	refute_nil(result)
  	refute_equal(result, "")
  	assert_kind_of(Float, result)
  end

  def test_getTime
  	info = HTTParty.get("https://api.forecast.io/forecast/#{API_KEY}/41.2524,-95.9980")

  	result = getTime(info)

  	refute_nil(result)
  	refute_equal(result, "")
  	assert_kind_of(Time, result)
  end

end