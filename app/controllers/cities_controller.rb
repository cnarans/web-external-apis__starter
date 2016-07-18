MyApp.get "/" do
  erb :"home"
end

MyApp.get "/weather" do
  erb :"weather"
end