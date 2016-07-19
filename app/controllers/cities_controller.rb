MyApp.get "/" do
  erb :"home"
end

MyApp.get "/weather" do
  @name = params[:name]
  @info = Weather.getWeather(params[:location])
  @wind = Weather.windDirection(@info["daily"]["data"][0]["windBearing"])
  @current = Time.at(@info["currently"]["time"])
  erb :"/weather"
end