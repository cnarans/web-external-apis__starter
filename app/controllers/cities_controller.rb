MyApp.get "/" do
  erb :"home"
end

MyApp.get "/weather" do
  @name = params[:name]
  @info = getWeather(params[:location])
  @wind = windDirection(@info)
  @current = getTime(@info)
  erb :"/weather"
end