require "sinatra"

get "/" do
	erb :index
end

get "/hi" do
  @greeting = "Hello World"
  @ingredients = ['rice', 'sausage']
  erb(:hipage)
end

get '/about' do
  "This is a brief bio."
end

get "/author" do
  @date = Date.today
	erb :author
end

get "/users/:username" do
  @username = params[:username]

  erb(:user_profile)
end

get "/hours/ago/:hours" do
  @hours = params[:hours]

  erb(:hour_ago)
end
