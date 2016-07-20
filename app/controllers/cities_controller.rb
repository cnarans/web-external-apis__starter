MyApp.get "/" do
  erb :"home"
end

MyApp.get "/weather" do
  @name = params[:name]
  @info = getWeather(params[:location])
  @wind = windDirection(@info)
  @current = Time.at(@info["currently"]["time"]) +  ((@info["offset"]+5)*3600)
  erb :"/weather"
end